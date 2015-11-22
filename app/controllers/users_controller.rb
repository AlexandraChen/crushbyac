class UsersController < ApplicationController
	before_action :authenticate_user!

	def admin_panel
		if current_user.admin?
			@admin = current_user
      @products = @admin.products.order("updated_at DESC")
      @clients = Client.all.order("updated_at DESC")
		else
			render root_path
		end
	end

end
