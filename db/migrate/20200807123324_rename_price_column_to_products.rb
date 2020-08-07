# frozen_string_literal: true

class RenamePriceColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :price, :regular_price
  end
end
