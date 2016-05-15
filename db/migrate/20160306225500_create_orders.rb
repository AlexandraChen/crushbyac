class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :cellphone

      t.timestamps null: false
    end
  end
end
