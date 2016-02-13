class CreateBottomDesigns < ActiveRecord::Migration
  def change
    create_table :bottom_designs do |t|
      t.string :name
      t.attachment :img
      t.boolean :published, default: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
