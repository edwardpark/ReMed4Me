class WelcomeController < ApplicationController
  def index

    @morning_reminders = Reminder.where("interval ='morning'")



  end
end
