class MedicationsController < ApplicationController
  def index
    @medication = Medication.all
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = current_user.medications.build(check_params)
    @medication.save!
    create_reminders(params[:reminders],@medication) #go through and create reminders ,@medication
    redirect_to @medication
  end

  def show
    @medication = Medication.find(params[:id])
  end

  def edit
    
    @medication = Medication.find(params[:id])
    @reminders = @medication.reminders.all

  end

  def update
    @medication = Medication.find(params[:id])
    if @medication.update( check_params )
        #reset the reminders themsevles here.
        redirect_to @medication
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
