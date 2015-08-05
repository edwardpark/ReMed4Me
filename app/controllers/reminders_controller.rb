class RemindersController < ApplicationController
  def index
#nope nevermind it wont work because nested within /medications/:id
  end

  def new
    @medication = Medication.find(params[:medication_id])
    binding.pry
  end

  def update
    binding.pry
    @medication = Medication.find(params[:medication_id])
    create_reminders(params[:reminders],@medication) #go through and create reminders ,@medication
    redirect_to @medication
  end

  def destroy

    @medication = Medication.find(params[:medication_id])
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    redirect_to medications_path #this might not work
  end
private

def create_reminders(reminder_data, medication)
  reminder_data.each do |interval, should_create_reminder|
    binding.pry
    medication.reminders.create(interval: interval) if should_create_reminder == "1" #how to prevent duplicates when update?
  end
end

end
