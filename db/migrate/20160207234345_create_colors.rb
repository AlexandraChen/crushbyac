class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.attachment :img
      t.boolean :published

      t.timestamps null: false
    end
  end
end
