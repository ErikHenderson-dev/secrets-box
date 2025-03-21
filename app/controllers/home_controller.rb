# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render json: { message: 'ok!', status: :ok }
  end
end
