class CustomBikinisController < ApplicationController
  def index
    @colors = Fill.where(fill_type:"Color").all
    @patterns = Fill.where(fill_type:"Pattern").all
    @top_designs = TopDesign.all
    @bottom_designs = BottomDesign.all
    @custom_bikini = CustomBikini.new
  end

  def create
    @custom_bikini = CustomBikini.new(custom_bikini_params)
  end

  private
  def custom_bikini_params
    params.require(:custom_bikini).permit(:bottom_design, :top_design, :top_neck_tie_fill, :top_main_fill, :top_ruffles_fill, :top_back_tie_fill, :bottom_main_fill, :bottom_lateral_fill)
  end
end
    