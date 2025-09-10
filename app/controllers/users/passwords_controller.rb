# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  def new
    super
  end

  # POST /resource/password
  def create
    begin
      super
    rescue Net::SMTPAuthenticationError => e
      set_flash_message(:alert, :smtp_error)
      redirect_to new_user_password_path
    end
  end

  protected

  def after_sending_reset_password_instructions_path_for(resource_name)
    new_user_session_path
  end
end 