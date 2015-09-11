class SitesController < ApplicationController
	def index
    @main_products = Product.all.order("created_at DESC").limit(3)
    @products = Product.all.order("created_at ASC").limit(Product.count - 3).shuffle[0..Product.all.size]
    @contact_form = ContactForm.new
	end

  def contact_us
    @contact_form = ContactForm.new
  end
  
end
