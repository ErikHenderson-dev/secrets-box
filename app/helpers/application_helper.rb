# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice, :success
      'alert-success'
    when :error, :alert
      'alert-danger'
    when :warning
      'alert-warning'
    else
      'alert-info'
    end
  end
end
