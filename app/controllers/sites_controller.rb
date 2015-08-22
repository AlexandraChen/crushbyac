class SitesController < ApplicationController
	def index
    if params[:search]
      @products = Product.search(params[:search]).all
    else
      @products = Product.all
    end
	end
end
