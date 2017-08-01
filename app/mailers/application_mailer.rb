class ApplicationMailer < ActionMailer::Base
  default to: 'moira.horizon@gmail.com',
  		  from: 'moira.horizon@gmail.com'
  layout 'mailer'
end
