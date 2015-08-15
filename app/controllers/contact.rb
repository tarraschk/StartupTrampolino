class ContactController < ApplicationController

  def new
    @contact_form = ContactForm.new
  end

  def create
    begin
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request
      if @contact_form.deliver
        flash.now[:notice] = 'Merci pour votre message, nous reviendrons très rapidement vers vous.'
      else
        render 'statics_pages/home'
      end
    rescue ScriptError
      flash[:error] = 'Désolé, ce message semble être un spam.'
    end
  end
end
