require 'action_mailer'

ActionMailer::Base.view_paths= File.dirname(__FILE__)
ActionMailer::Base.smtp_settings = {
  address:  'smtp.gmail.com',
  port:  '587',
  user_name:  ENV['EMAIL_USERNAME'],
  password:  ENV['EMAIL_PASSWORD'],
  authentication: :plain

}

class Newsletter < ActionMailer::Base
  default from: 'michael@example.com'

  def welcome(recipient)
    @recipient = recipient
    mail(to: recipient,
          subject: "[Signed up] Welcome #{recipient}")
  end
  end

  

  #you need a folder whose name matches the name of the class inheriting from
  #ActionMailer Base
