# frozen_string_literal: true

class DashboardController < ApplicationController
  layout 'authenticated'

  def index
    @recent_secrets = current_user.my_secrets.order(created_at: :desc).limit(5)
  end
end 