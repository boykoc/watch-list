class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # Helper methods
  helper_method :logged_in?, :current_user
  
  ##
  # Check if user is logged into the site.
  def logged_in?
    session.has_key? :user
  end
  
  ##
  # Instantiate the user from the session.
  def current_user
    User.find_by(uid: session[:user]) if logged_in?
  end
end
