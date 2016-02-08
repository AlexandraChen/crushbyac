class UsersController < ApplicationController
	before_action :authenticate_user!

	def admin_panel
		if current_user.admin?
			@admin = current_user
      @products = @admin.products.order("updated_at DESC")
      @clients = @admin.clients.order("updated_at DESC")
      @colors = @admin.colors.order("updated_at DESC")
      @patterns = @admin.patterns.order("updated_at DESC")
		else
			render root_path, notice: "You have to be an administrator"
		end
	end

end

