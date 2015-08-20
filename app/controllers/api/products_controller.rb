class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end

    render :index
  end

end
