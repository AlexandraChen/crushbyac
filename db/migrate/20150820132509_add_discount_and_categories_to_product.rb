class AddDiscountAndCategoriesToProduct < ActiveRecord::Migration
  def change
    add_column :products, :discount, :integer
    add_column :products, :categories, :string
  end
end
