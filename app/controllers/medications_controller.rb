class MedicationsController < ApplicationController
  def index
    @medication = Medication.all
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = current_user.medications.build(check_params)
    @medication.save
    redirect_to @medication
  end

  def show
    @medication = Medication.find(params[:id])
  end

  def edit
    @medication = Medication.find(params[:id])
  end

  def update
    @medication = Medication.find(params[:id])
    if @medication.update( check_params )
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
    params.require(:medication).permit(:name,:description,:dosage,:morning,:midday,:afternoon,:evening)
  end
end
