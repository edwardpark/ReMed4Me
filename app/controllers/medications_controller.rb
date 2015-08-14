class MedicationsController < ApplicationController
  def index

    @medication = current_user.medications
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = current_user.medications.build(check_params)
    @medication.save!
    create_reminders(params[:reminders],@medication) #go through and create reminders ,@medication
      #i know this is super ugly but last minute patch/hack
      # mms: No need.  You can find a user through medication.  See Reminder class.
        @reminder = Reminder.last
        @reminder.user_id = @medication.user_id
        @reminder.save

    redirect_to medications_path
  end

  def show
    # mms: Limit to this user's medications.  Check for this in other actions too.
    @medication = current_user.medications.find(params[:id])
    @reminders = @medication.reminders.all
  end

  def edit
    @medication = Medication.find(params[:id])
    @reminders = @medication.reminders.all

  end

  def update
    @medication = Medication.find(params[:id])
    if @medication.update( check_params )
        #reset the reminders themsevles here.
        # mms: where is the flow we dicussed for reminders updates?
        redirect_to medications_path
    else
      render 'edit'
    end
  end

  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
    redirect_to medications_path
  end


  private

  def check_params
    params.require(:medication).permit(:name,:description,:dosage)
  end

  def create_reminders(reminder_data, medication)
    reminder_data.each do |interval, should_create_reminder|
      medication.reminders.create(interval: interval) if should_create_reminder == "1" #how to prevent duplicates when update?
    end
  end


end
