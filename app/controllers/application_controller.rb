class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_panel_path#request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    else
      root_path
    end
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  # def after_cancel_path_for(resource)
  #   root_path
  # end

  protected
  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) << :full_name
  	end
end
