class ClientsController < ApplicationController

  def happy_customers
    @clients = Client.all

  end

  def new
    @client = Client.new
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
