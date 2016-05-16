class ProductsController < ApplicationController
	#only admin users can create
	# before_action :current_user, only: [:new, :create, :update]
  # def index
  #   @products = Product.all
  #   @order_item = current_order.order_items.new
  # end
  
  def show
    @product = Product.find(params[:id])
    @contact_form = ContactForm.new
    @order_item = current_order.order_items.new
  end

  def new
    if current_user.admin?
      @product = current_user.products.new
    else
      flash[:notice] = "You have to be an admin to add products"
        redirect_to root_path
    end 
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to admin_panel_path, notice: I18n.t(:product_new_success)
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
    if current_user.admin?
      if @product.valid?
        @product.save
        redirect_to admin_panel_path, notice: I18n.t(:product_update_success)
        return
      end
    end
    flash[:notice] = I18n.t(:product_new_fail)
    render :edit
  end

  private
  def product_params
    params.require(:product).permit(:title, :price, :description, :size, :img, :categories, :discount, :tags, :published)
  end
end
