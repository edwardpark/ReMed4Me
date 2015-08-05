class WelcomeController < ApplicationController
  def index
    @morning_medication = current_user.medications.first #fix this!
    #awesome so then find search returning all morning_medications..etc.
    #and then in the look search and link to their reminders.


  end
end
