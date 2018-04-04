class ApplicationController < ActionController::API
  include Knock::Authenticable
  helper_method :current_user, :logged_in?
  
  
  private
  
  # Find the user either by the logged in user, or find by the session token
  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end
  
  def logged_in?
    !!current_user
  end
  
  # Reset the old session token and make the new user the current user
  def login!(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end
  
  # Clear the current user token, clear the session
  def logout!
    current_user.reset_session_token! if current_user
    session.clear!
  end
  
end
