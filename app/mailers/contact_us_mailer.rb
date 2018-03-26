class ContactUsMailer < ApplicationMailer

  def send_message(name:, from:, message:)
    @message = message
    @name    = name
    mail(to: 'ottjw@yahoo.com', subject: "Read Today Contact", from: from)
  end

end
