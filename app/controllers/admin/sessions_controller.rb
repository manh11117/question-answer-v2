# frozen_string_literal: true

module Admin
  # class SessionsController
  class SessionsController < ApplicationController
    def new; end

    def create
      user = User.admin.find_by(email: params[:session][:email].downcase)
      if user & user.authenticate(params[:session][:password])
        login
      else
        login_error
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

    def login
      log_in user
      redirect_to root_url
    end

    def login_error
      flash.now[:danger] = show_message user
      render "new"
    end
  end
end
