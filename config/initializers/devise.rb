# frozen_string_literal: true

require 'devise/orm/active_record'

Devise.setup do |config|
  
  config.mailer_sender = ENV.fetch('EMAIL_USERNAME', 'noreply@example.com')
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.stretches = Rails.env.test? ? 1 : 12
  config.allow_unconfirmed_access_for = 0.days
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.timeout_in = 10.minutes
  config.reset_password_within = 1.hours
  config.sign_out_via = :delete
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
end
