class SessionsController < ApplicationController
  # GET /auth/google_oauth2/callback
  def create
    user_info = request.env["omniauth.auth"]
    
    user = User.find_or_initialize_by(uid: user_info['uid']) do |u|
      u.uid = user_info["uid"]
      u.name = user_info["info"]["name"]
      u.image = user_info["info"]["image"]
      u.save!
    end
    
    session[:user] = user.uid
    
    redirect_to root_path
  end
  
  def destroy
    session.delete :user
    redirect_to root_path
  end
end