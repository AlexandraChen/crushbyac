class ProductsController < ApplicationController
	#only admin users can create
	# before_action :current_user.admin, only: [:new, :create, :update]
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.product.new
  end

  def create
    @product = current_user.product.new(product_params)
    if @product.save
      redirect_to root_path, notice: I18n.t(:product_new_success)
    else
      flash[:notice] = I18n.t(:product_new_fail)
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    if @product.valid?
      @product.save
      redirect_to product_path(@product.id), notice: I18n.t(:product_update_success)
      return
    end
    flash[:notice] = I18n.t(:product_new_fail)
    render :edit
  end

  private
  def product_params
    params.require(:product).permit(:title, :price, :description, :size, :img)
  end
end
