class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    binding.pry
    @morning_reminders = current_user.reminders.where("interval ='morning'")
    # @midday_reminders = Reminder.where("interval ='midday'")
    # @afternoon_reminders = Reminder.where("interval ='afternoon'")
    # @evening_reminders = Reminder.where("interval='evening'")
  end
end
