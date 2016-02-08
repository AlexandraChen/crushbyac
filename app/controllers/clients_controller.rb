class ClientsController < ApplicationController

  def happy_customers
    @clients = Client.all
  end

  def new
    if current_user.admin?
      @client = Client.new
    else
      flash[:notice] = "You have to be an admin to add clients pictures"
      redirect_to root_path
    end
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to admin_panel_path, notice: I18n.t(:client_new_success)
    else
      flash[:notice] = I18n.t(:client_new_fail)
      render :new
    end
  end

  private 

  def client_params
    params.require(:client).permit(:name, :img)
  end
end
