class Admin::SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin?
      # Make sure a user is activated before they can log in
      log_in user
      
        redirect_to root_url
      
    else
      if user && user.user?
      	flash.now[:danger] = 'Not admin'
      else
      	flash.now[:danger] = 'Invalid email/password combination'
  	  end
  	  	render 'new'
    end
  end

  def destroy
  log_out if logged_in? # only log out if a user is currently logged in
    redirect_to root_url
  end

end