class UsersController < ApplicationController
	before_action :authenticate_user!

	def admin_panel
		if current_user.admin?
			@admin = current_user
      @products = @admin.products.order("updated_at DESC")
      @clients = Client.all.order("updated_at DESC")
      @colors = @admin.fills.order("updated_at DESC").where(fill_type:"Color")
      @patterns = @admin.fills.order("updated_at DESC").where(fill_type:"Pattern")
      @top_designs = @admin.top_designs.order("updated_at DESC")
      @bottom_designs = @admin.bottom_designs.order("updated_at DESC")
		else
			render root_path, notice: "You have to be an administrator"
		end
	end

end

