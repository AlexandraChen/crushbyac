class AddBikiniSizeToCustomBikini < ActiveRecord::Migration
  def change
    add_column :custom_bikinis, :height, :decimal
    add_column :custom_bikinis, :bust, :string
    add_column :custom_bikinis, :waist, :decimal
    add_column :custom_bikinis, :hips, :decimal
  end
end
