# frozen_string_literal: true

# class Admin::UsersController
module Admin
  # Controller for Users
  class UsersController < ApplicationController
    def new
      @user = User.new
    end
  end
end
