class SessionsController < ApplicationController
	#protect_from_forgery

def create
  auth = request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
	flash[:success] = "Welcome to the Sample App!"
	redirect_to "/user_criteria/#{current_user.id}"

end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
end

def failure
	redirect_to "http://failurepage.com/" #need if login fails, change to user friendly message
end

end
