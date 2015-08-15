# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController
  def home
    @contact = ContactForm.new
  end

  def create
    begin
      @contact = ContactForm.new(fullname: params[:fullname], email: params[:email], message: params[:message])
      puts @contact.errors.inspect
      puts @contact.errors.full_messages
      puts @contact.errors.full_messages.inspect
      if @contact.deliver
        flash.now[:success] = t('view.mail_form.success')
        render 'static_pages/home'
      else
        flash.now[:danger] = t('view.mail_form.error').html_safe
        render 'static_pages/home'
      end
    rescue ScriptError
      flash[:danger] = t('view.mail_form.spam').html_safe
    end
  end

  def help
  end

  def about
  end
end
