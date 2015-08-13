class AddImgToProducts < ActiveRecord::Migration

  def change
  	add_attachment :products, :img
  end

end
