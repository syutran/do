class UserMailer < ActionMailer::Base
  default from: "womailer@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm(umail)
    @greeting = "Hi"

    mail to: umail
  end
end
