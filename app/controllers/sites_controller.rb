class SitesController < ApplicationController
	def index
    @products = Product.order("created_at DESC")
	end
end
