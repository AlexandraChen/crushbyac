class ProductsController < ApplicationController
	#only admin users can create
	before_action :current_user.admin, only: [:create, :update]
end
