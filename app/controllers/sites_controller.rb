class SitesController < ApplicationController
	def index
    @products = Product.all
	end
end
