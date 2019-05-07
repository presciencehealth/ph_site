class Demo < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :institution,   :validate => true
  attribute :telephone,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Demo Request Form",
      :to => "hiro@presciencehealth.io",
      :from => %("#{name}" <#{email}>)
    }
  end
end