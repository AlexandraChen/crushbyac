class SitesController < ApplicationController
	def index
    # To show main products at the top
    #@main_products = Product.all.order("created_at DESC").limit(3)
    #Product.all.order("created_at ASC").limit(Product.count - 3).shuffle[0..Product.all.size]
    @products = Product.recent
    @contact_form = ContactForm.new
    @clients = Client.all.order('random()').limit(3)
	end

  def contact_us
    @contact_form = ContactForm.new
  end
  
end
