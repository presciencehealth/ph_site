class Demo < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,   :validate => true
  attribute :institution,   :validate => true
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Demo Request",
      :to => "hiro@presciencehealth.io",
      :from => %("#{name}" <#{email}>)
    }
  end
end