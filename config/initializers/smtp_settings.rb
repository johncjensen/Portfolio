ActionMailer::Base.smtp_settings = {
  :address => "smtp.mandrillapp.com",
  :port => 587,
  :domain => "johncjensen.com",
  :user_name => "johncjensen@hotmail.com",
  :password => "nQ2zQaLfxFMYwSrxxxbuag",
  :authentication => "plain",
  # :enable_starttls_auto => true
}
