# frozen_string_literal: true

# Add unique constraint on a user's name
class UserNameUniqueConstraint < ActiveRecord::Migration[7.1]
  def change
    add_index :users, :name, unique: true
  end
end
