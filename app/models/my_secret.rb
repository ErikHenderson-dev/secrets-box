# frozen_string_literal: true

class MySecret < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :category, presence: true

  enum category: {
    login: 0,
    credit_card: 1,
    document: 2,
    note: 3,
    file: 4
  }

  def self.categories_for_select
    categories.map do |key, value|
      [I18n.t("my_secrets.categories.#{key}"), key]
    end
  end
end 