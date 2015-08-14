class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # mms: every gem in Gemfile is `require`d, unless you state otherwise in Gemfile
  # mms:  in fact, pry is only required in develop and test environment that way.
  require 'pry'

  # mms: interesting answer to this problem.  Where did you find this?  When you find solutions, I recommend to include the source, so future developers can reference it.
  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password,:avatar) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :avatar) }
end

end
