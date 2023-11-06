# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :user_params, only: %i[create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!

    redirect_to channels_url
  rescue ActiveRecord::RecordInvalid
    render :new, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
