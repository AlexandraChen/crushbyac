class AddFieldsToCustomBikini < ActiveRecord::Migration
  def change
    remove_column :custom_bikinis, :top_id
    remove_column :custom_bikinis, :bottom_id
    add_column :custom_bikinis, :top_design, :string
    add_column :custom_bikinis, :bottom_design, :string
    add_column :custom_bikinis, :top_neck_tie_fill, :string
    add_column :custom_bikinis, :top_main_fill, :string
    add_column :custom_bikinis, :top_back_tie_fill, :string
    add_column :custom_bikinis, :top_ruffles_fill, :string
    add_column :custom_bikinis, :bottom_main_fill, :string
    add_column :custom_bikinis, :bottom_lateral_fill, :string
  end
end
