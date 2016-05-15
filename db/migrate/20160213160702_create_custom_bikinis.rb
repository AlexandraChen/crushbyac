class CreateCustomBikinis < ActiveRecord::Migration
  def change
    create_table :custom_bikinis do |t|
      t.integer :top_id
      t.integer :bottom_id

      t.timestamps null: false
    end
  end
end
