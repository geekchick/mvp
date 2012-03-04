class SessionsController < ApplicationController
	#protect_from_forgery

def create
  auth = request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
  redirect_to root_url, :notice => "Signed in!"
  #render :partial => 'users/user_criteria'
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
end

def failure
	redirect_to "http://failurepage.com/" #need if login fails, change to user friendly message
end



end
