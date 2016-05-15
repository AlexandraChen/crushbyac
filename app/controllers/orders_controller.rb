class OrdersController < ApplicationController

  def new
    @order = Order.new
    @order.build.custom_bikini
  end

  def create
    @order = Order.new(order_params)
     if @order.save
      redirect_to custom_bikinis_path, notice: "Bikini personalizado creado exitosamente! Te estaremos contactando en un lapso de 48 horas."
     else
      flash[:notice] = "Algo falló con tu bikini personalizado. Por favor, intenta nuevamente!"
      redirect_to custom_bikinis_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :email, :address, :cellphone,custom_bikini_attributes: [:bottom_design, :top_design, :top_neck_tie_fill, :top_main_fill, :top_ruffles_fill, :top_back_tie_fill, :bottom_main_fill, :bottom_lateral_fill, :bust, :waist, :hips, :height])
  end
end
