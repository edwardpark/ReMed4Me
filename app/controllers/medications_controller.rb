class MedicationsController < ApplicationController
  def index
    @medication = Medication.all
  end

  def new
    @medication = Medication.new
  end

  def create
    binding.pry
    @medication = current_user.medications.build(check_params)
    binding.pry
    @medication.save
    binding.pry
    redirect_to @medication
  end

  def show
    @medication = Medication.find(params[:id])
  end

  private

  def check_params
    params.require(:medication).permit(:name,:description,:dosage,:morning,:midday,:afternoon,:evening)
  end
end
