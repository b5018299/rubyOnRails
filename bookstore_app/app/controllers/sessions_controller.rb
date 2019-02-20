class SessionsController < ApplicationController
  def index
  	redirect_to static_pages_Home_path
  end

  def new
  end

  def create
  	user = User.find_by_userid(params[ :userid])

  	if user && user.authenticate(params[ :password])
		session[ :user_id]=user.id
		redirect_to root_path, notice:
		"Welcome #{user.userid}, you are now logged in"
	else
		redirect_to new_session_path, alert:
		"Invalid username and/or password"
	end
  end

  def destroy
  	session[:user_id] = nil
	redirect_to root_path, notice:
		"You have successfully logged out"
  end
end
