class ChangePriceIntegerToDecimal < ActiveRecord::Migration
  def change
    change_column :prices, :price, :decimal
  end
end
