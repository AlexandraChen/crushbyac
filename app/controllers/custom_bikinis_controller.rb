class CustomBikinisController < ApplicationController
  def index
    @colors = Fill.where(fill_type:"Color").all
    @patterns = Fill.where(fill_type:"Pattern").all
  end
end
