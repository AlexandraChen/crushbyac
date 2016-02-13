class ColorModelToFill < ActiveRecord::Migration
  def change
    rename_table :colors, :fill
  end
end
