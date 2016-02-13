class BottomDesignsController < ApplicationController
   def new
    if current_user.admin?
      @bottom_design = current_user.bottom_designs.new
    else
      flash[:notice] = I18n.t(:you_have_to_be_an_admin)
      redirect_to root_path
    end
  end

  def create
    @bottom_design = current_user.bottom_designs.new(bottom_design_params)
    if @bottom_design.save
      redirect_to admin_panel_path, notice: I18n.t(:bottom_design_new_success)
    else
      flash[:notice] = I18n.t(:bottom_design_new_fail)
      render :new
    end
  end

  def edit
    @bottom_design = BottomDesign.find(params[:id])
  end

  def update
    @bottom_design =  BottomDesign.find(params[:id])
    @bottom_design.update_attributes(bottom_design_params)
    if @bottom_design.valid?
      @bottom_design.save
      redirect_to admin_panel_path, notice: I18n.t(:bottom_design_edit_success)
      return
    end
    flash[:notice] = I18n.t(:bottom_design_edit_fail)
    render :edit
  end

  private
  def bottom_design_params
    params.require(:bottom_design).permit(:name, :img, :published)
  end
end
