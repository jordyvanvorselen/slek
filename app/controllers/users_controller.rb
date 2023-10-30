# frozen_string_literal: true

class UsersController < ApplicationController
  def new
  end

  def create
    name = params["name"]

    User.create!(name: name)
  end
end
