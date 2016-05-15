class AddUserIdToColorsAndClients < ActiveRecord::Migration
  def change
    add_column :colors, :user_id, :integer
    add_column :clients, :user_id, :integer
  end
end



