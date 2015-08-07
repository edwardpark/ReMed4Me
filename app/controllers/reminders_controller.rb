class RemindersController < ApplicationController
  def index
#nope nevermind it wont work because nested within /medications/:id
  end

  def new
    @medication = Medication.find(params[:medication_id])

  end

  def update


    if request.xhr? #alias for xml_http_request?()

      head :ok
      @reminder_u = Reminder.find(params[:id])
      @reminder_u.taken = true
      @reminder_u.save

      redirect_to root_path

    end

    @medication = Medication.find(params[:medication_id])
    create_reminders(params[:reminders],@medication) #go through and create reminders ,@medication

      @reminder = Reminder.last
      @reminder.user_id = @medication.user_id
      @reminder.save

    redirect_to edit_medication_path(@medication)
  end

  def destroy
    @medication = Medication.find(params[:medication_id])
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    redirect_to edit_medication_path(@medication) #this might not work
  end

private

def create_reminders(reminder_data, medication)
  reminder_data.each do |interval, should_create_reminder|

    medication.reminders.create(interval: interval) if should_create_reminder == "1" #how to prevent duplicates when update?
  end
end

end
