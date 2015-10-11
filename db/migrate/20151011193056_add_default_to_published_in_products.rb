class AddDefaultToPublishedInProducts < ActiveRecord::Migration
  def change
    change_column :products, :published, :boolean, default: true
  end
end
