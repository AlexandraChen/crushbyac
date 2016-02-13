class FillsController < ApplicationController

  def new
    if current_user.admin?
      @fill = current_user.fills.new
    else
      flash[:notice] = I18n.t(:you_have_to_be_an_admin)
      redirect_to root_path
    end
  end

  def create
    @fill = current_user.fills.new(fill_params)
    if @fill.save
      redirect_to admin_panel_path, notice: I18n.t(:fill_new_success)
    else
      flash[:notice] = I18n.t(:fill_new_fail)
      render :new
    end
  end

  def edit
    @fill = Fill.find(params[:id])
  end

  def update
    @fill = Fill.find(params[:id])
    @fill.update_attributes(fill_params)
    if @fill.valid?
      @fill.save
      redirect_to admin_panel_path, notice: I18n.t(:fill_edit_success)
      return
    end
    flash[:notice] = I18n.t(:fill_edit_fail)
    render :edit
  end

  private
  def fill_params
    params.require(:fill).permit(:name, :img, :fill_type, :published)
  end
end
