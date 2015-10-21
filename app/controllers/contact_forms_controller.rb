class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    if @contact_form.deliver
      redirect_to :back, notice: I18n.t(:email_success)
    else
      redirect_to :back, alert: I18n.t(:fill_fields)
    end
  end
end
