class TopDesignsController < ApplicationController
  def new
    if current_user.admin?
      @top_design = current_user.top_designs.new
    else
      flash[:notice] = I18n.t(:you_have_to_be_an_admin)
      redirect_to root_path
    end
  end

  def create
    @top_design = current_user.top_designs.new(top_design_params)
    if @top_design.save
      redirect_to admin_panel_path, notice: I18n.t(:top_design_new_success)
    else
      flash[:notice] = I18n.t(:top_design_new_fail)
      render :new
    end
  end

  def edit
    @top_design = TopDesign.find(params[:id])
  end

  def update
    @top_design =  TopDesign.find(params[:id])
    @top_design.update_attributes(top_design_params)
    if @top_design.valid?
      @top_design.save
      redirect_to admin_panel_path, notice: I18n.t(:top_design_edit_success)
      return
    end
    flash[:notice] = I18n.t(:top_design_edit_fail)
    render :edit
  end

  private
  def top_design_params
    params.require(:top_design).permit(:name, :img, :published)
  end
end
