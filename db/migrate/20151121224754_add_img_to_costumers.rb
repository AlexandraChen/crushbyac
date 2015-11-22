class AddImgToCostumers < ActiveRecord::Migration
  def change
    add_attachment :customers, :img
  end
end
