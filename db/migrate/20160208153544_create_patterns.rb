class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.attachment :img
      t.boolean :published
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
