class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    if params[:search]
      @products = []
      Product.search(params[:search]).all.each do |x|
        if x.published == true
          @products << x
        end
      end
    end
    render :index
  end

end
