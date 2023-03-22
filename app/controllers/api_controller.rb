# frozen_string_literal: true

class ApiController < ApplicationController
  def random_msg
    @msg = Greeting.find(Greeting.pluck(:id).sample)
    render json: @msg
  end
end
