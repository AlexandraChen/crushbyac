class PatternsController < ApplicationController
   def new
    if current_user.admin?
      @pattern = current_user.patterns.new
    else
      flash[:notice] = I18n.t(:you_have_to_be_an_admin)
      redirect_to root_path
    end
  end

  def create
    @pattern = current_user.patterns.new(pattern_params)
    if @pattern.save
      redirect_to admin_panel_path, notice: I18n.t(:pattern_new_success)
    else
      flash[:notice] = I18n.t(:pattern_new_fail)
      render :new
    end
  end

  def edit
    @pattern = Pattern.find(params[:id])
  end

  def update
    @pattern = Pattern.find(params[:id])
    @pattern.update_attributes(pattern_params)
    if @pattern.valid?
      @pattern.save
      redirect_to admin_panel_path, notice: I18n.t(:pattern_edit_success)
      return
    end
    flash[:notice] = I18n.t(:pattern_edit_fail)
    render :edit
  end

  private
  def pattern_params
    params.require(:pattern).permit(:name, :img, :published)
  end
end
