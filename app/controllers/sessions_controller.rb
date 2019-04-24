# frozen_string_literal: true

# class SessionsController
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.user.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      login(user)
    else
      login_error(user)
    end
  end

  def destroy
    log_out if logged_in? # only log out if a user is currently logged in
    redirect_to root_url
  end

  private

  def show_message(user)
    user&.user? ? "Not admin" : "Invalid email/password combination"
  end

  def login(user)
    log_in user
    redirect_to root_path
  end

  def login_error(user)
    flash.now[:danger] = show_message user
    render "new"
  end
end

