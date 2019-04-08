# frozen_string_literal: true

# class Admin::UsersController
module Admin
  # Controller for Users
  class UsersController < ApplicationController
    def index
      @users = User.order(:id).page(params[:page]).per(10)
    end
  end
end
