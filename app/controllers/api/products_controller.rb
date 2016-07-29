class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    if params[:search]
      @products = Product.recent.search(params[:search]).all
    end
    render :index
  end

end
