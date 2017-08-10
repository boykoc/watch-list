class ApplicationController < ActionController::Base
  # [START helper_methods]
  helper_method :logged_in?, :current_user
  
  def logged_in?
    session.has_key? :user
  end
  
  def current_user
    Marshal.load session[:user] if logged_in?
  end
  # [END helper_methods]

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
