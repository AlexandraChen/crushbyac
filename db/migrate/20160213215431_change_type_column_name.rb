class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :fills, :type, :fill_type
  end
end
