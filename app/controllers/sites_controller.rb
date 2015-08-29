class SitesController < ApplicationController
	def index
    @products = Product.all.shuffle[0..Product.all.size]
    @contact_form = ContactForm.new
	end
end
