class SitesController < ApplicationController
	def index
    @products = Product.all.shuffle[0..Product.all.size]
	end
end
