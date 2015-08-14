class UsersController < ApplicationController
	before_action :authenticate_user!

	def admin_panel
		if current_user.admin?
			@admin = current_user
		else
			render root_path
		end
	end

end
