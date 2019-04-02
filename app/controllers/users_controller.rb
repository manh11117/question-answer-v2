# frozen_string_literal: true

# class UsersController
class UsersController < ActionController::Base
  def new
    @user = User.new
  end
end
