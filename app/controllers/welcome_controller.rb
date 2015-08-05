class WelcomeController < ApplicationController
  def index
    @morning_reminders = Reminder.where("interval ='morning'")
    @midday_reminders = Reminder.where("interval ='midday'")
    @afternoon_reminders = Reminder.where("interval ='afternoon'")
    @evening_reminders = Reminder.where("interval='evening'")
  end
end
