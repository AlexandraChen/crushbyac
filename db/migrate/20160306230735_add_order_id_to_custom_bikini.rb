class AddOrderIdToCustomBikini < ActiveRecord::Migration
  def change
    add_column :custom_bikinis, :order_id, :integer
  end
end
