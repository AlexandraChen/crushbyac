class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    if @contact_form.deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now[:alert] = 'Please fill all the fields!'
    end
  end
end
