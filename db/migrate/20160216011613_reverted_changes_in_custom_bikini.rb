class RevertedChangesInCustomBikini < ActiveRecord::Migration
  def change
    add_column :custom_bikinis, :top_design, :string
    add_column :custom_bikinis, :bottom_design, :string
    add_column :custom_bikinis, :top_neck_tie_fill, :string
    add_column :custom_bikinis, :top_main_fill, :string
    add_column :custom_bikinis, :top_back_tie_fill, :string
    add_column :custom_bikinis, :top_ruffles_fill, :string
    add_column :custom_bikinis, :bottom_main_fill, :string
    add_column :custom_bikinis, :bottom_lateral_fill, :string
    # remove_column :custom_bikinis, :top_design_id
    # remove_column :custom_bikinis, :bottom_design_id
    # remove_column :custom_bikinis, :top_neck_tie_fill_id
    # remove_column :custom_bikinis, :top_main_fill_id
    # remove_column :custom_bikinis, :top_back_tie_fill_id
    # remove_column :custom_bikinis, :top_ruffles_fill_id
    # remove_column :custom_bikinis, :bottom_main_fill_id
    # remove_column :custom_bikinis, :bottom_lateral_fill_id
  end
end
