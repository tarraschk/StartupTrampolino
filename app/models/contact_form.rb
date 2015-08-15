class ContactForm < MailForm::Base
  attribute :fullname,      :validate => true
  attribute :email
  attribute :message

  def headers
    {
      :subject => "Contact Form - Site CBW",
      :to => "contact@cyberwatch.fr",
      :from => "contact@cyberwatch.fr"
    }
  end
end
