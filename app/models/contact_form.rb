class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true
  attribute :message
  attribute :nickname,  :captcha  => true
  validates :email, presence: true
  validates :message, presence: true

  def headers
    {
      :subject => "Contáctanos",
      :to => "crushalexandrachen@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end