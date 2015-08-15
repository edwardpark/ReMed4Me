class WelcomeController < ApplicationController
  # mms:  Only authenticate the welcome route?  Seems like the reverse of the usual plan. We usually let anyone to the welcome screen, but require login for any other.
  # mms:    recommend you move this ApplicationController to lock down all routes, then open up specific routes via `skip_before_filter`
  before_action :authenticate_user!
  def index
    # mms: indentation
    # mms: look up rails "scopes" for a way to do this in the model.
    @morning_reminders = current_user.reminders.where("interval ='morning'")
     @midday_reminders = current_user.reminders.where("interval ='midday'")
     @afternoon_reminders =current_user.reminders.where("interval ='afternoon'")
     @evening_reminders = current_user.reminders.where("interval='evening'")

  end

  # mms: welcome#index AND welcome#show?  Please leave some clarifying comments.
  def show
  end

end
