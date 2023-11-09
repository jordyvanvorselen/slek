# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :check_user_authenticated

  private

  def check_user_authenticated
    return if session[:username]

    redirect_to new_user_path
  end
end
