class ColorModelToFill < ActiveRecord::Migration
  def change
    rename_table :colors, :fills
  end
end
