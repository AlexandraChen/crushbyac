class Add < ActiveRecord::Migration
  def change
    add_column :fills, :type, :string
  end
end
