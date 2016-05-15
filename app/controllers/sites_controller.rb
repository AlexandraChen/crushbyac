class SitesController < ApplicationController
	def index
    # To show main products at the top
    #@main_products = Product.all.order("created_at DESC").limit(3)
    #Product.all.order("created_at ASC").limit(Product.count - 3).shuffle[0..Product.all.size]
    @products = Product.recent.paginate(:page => params[:page], :per_page => 12)
    @contact_form = ContactForm.new
    @clients = Client.all.order('random()').limit(6)
    @order_item = current_order.order_items.new
	end

  def contact_us
    @contact_form = ContactForm.new
  end
  
end
