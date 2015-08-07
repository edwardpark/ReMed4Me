class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index

    @morning_reminders = current_user.reminders.where("interval ='morning'")
     @midday_reminders = current_user.reminders.where("interval ='midday'")
     @afternoon_reminders =current_user.reminders.where("interval ='afternoon'")
     @evening_reminders = current_user.reminders.where("interval='evening'")
     
  end

  def show
  end

end
