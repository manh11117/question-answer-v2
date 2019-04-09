# frozen_string_literal: true

# class Admin::UsersController
module Admin
  # Controller for Users
  class UsersController < ApplicationController
    before_action :find_user, only: %i[edit update destroy]

    def index
      @users = User.order(:id).page(params[:page]).per(10)
    end

    def new
      @user = User.new
    end

    def edit; end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_users_path
      else
        render :new
      end
    end

    def update
      if @user.update(user_params)
        redirect_to admin_users_path
      else
        render :edit
      end
    end

    def destroy
      @user.destroy

      redirect_to admin_users_path
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end

    def find_user
      @user = User.find(params[:id])
    end
  end
end
