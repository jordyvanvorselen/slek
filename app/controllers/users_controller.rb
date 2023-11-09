# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :user_params, only: %i[create]
  skip_before_action :check_user_authenticated, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!

    session[:username] = @user.name

    redirect_to channels_url
  rescue ActiveRecord::RecordInvalid
    render :new, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
