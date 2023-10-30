# frozen_string_literal: true

class UsersController < ApplicationController
  def new
  end

  def create
    name = params["name"]

    return unless name.length > 0

    raise "Create user!"
  end
end
