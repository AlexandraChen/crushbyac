class UserController < ApplicationController
	before_action :authenticate_user!

	def admin_panel
		if current_user.admin?
			
		end
	end

end
