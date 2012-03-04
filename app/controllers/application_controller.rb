class ApplicationController < ActionController::Base
	

  #protect_from_forgery - NEED TO FIX BEFORE LIVE RELEASE


helper_method :current_user

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

#def current_profile
#	@current_proile ||= Profile.find(session[:profile_id]) if session#[:profile_id]
#end

end
