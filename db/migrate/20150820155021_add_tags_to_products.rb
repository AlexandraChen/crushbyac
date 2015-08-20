class AddTagsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tags, :string
  end
end
