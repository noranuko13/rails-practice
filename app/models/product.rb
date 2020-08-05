# frozen_string_literal: true

class Product < ApplicationRecord
  include SpreadsheetArchitect

  validates :name, presence: true
end
