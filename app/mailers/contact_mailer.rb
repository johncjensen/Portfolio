class ContactMailer< ActionMailer::Base

  default :from => "hello@johncjensen.com"
  default :to => "johncjensen@hotmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}", :reply_to => message.email)
  end

end
