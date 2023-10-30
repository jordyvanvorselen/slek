# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :user_params, only: %i[create]

  def new
  end

  def create
    User.create!(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
