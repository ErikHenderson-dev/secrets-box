# frozen_string_literal: true

class SettingsController < ApplicationController
  layout 'authenticated'

  def index
  end

  def update_profile
    if current_user.update(user_params)
      redirect_to settings_path, notice: 'Perfil atualizado com sucesso.'
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username)
  end
end 