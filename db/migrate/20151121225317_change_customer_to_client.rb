class ChangeCustomerToClient < ActiveRecord::Migration
  def change
    rename_table :customers, :clients
  end
end
