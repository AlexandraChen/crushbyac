class ChangePriceAndDiscountDataType < ActiveRecord::Migration
  def change
    change_column :products, :price, :decimal, precision: 5, scale: 2
    change_column :products, :discount, :decimal, precision: 5, scale: 2
  end
end
