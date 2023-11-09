# frozen_string_literal: true
require 'rails_helper'

describe Channel do
  it 'has a name' do
    channel = Channel.new

    expect(channel).to respond_to :name
  end
end