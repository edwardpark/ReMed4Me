class MedicationsController < ApplicationController
  def index
    @medication = Medication.all
  end

  def new
    @medication = Medication.new
  end
end
