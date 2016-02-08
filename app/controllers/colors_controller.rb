class ColorsController < ApplicationController

  def new
    if current_user.admin?
      @color = current_user.colors.new
    else
      flash[:notice] = I18n.t(:you_have_to_be_an_admin)
      redirect_to root_path
    end
  end

  def create
    @color = current_user.colors.new(color_params)
    if @color.save
      redirect_to admin_panel_path, notice: I18n.t(:color_new_success)
    else
      flash[:notice] = I18n.t(:color_new_fail)
      render :new
    end
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])
    @color.update_attributes(color_params)
    if @color.valid?
      @color.save
      redirect_to admin_panel_path, notice: I18n.t(:color_edit_success)
      return
    end
    flash[:notice] = I18n.t(:color_edit_fail)
    render :edit
  end

  private
  def color_params
    params.require(:color).permit(:name, :img, :published)
  end
end
