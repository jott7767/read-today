class ContactUsMailer < ApplicationMailer

  def send_message(name:, email:, message:)
    @message = message
    @name    = name
    @email   = email
    mail(to: 'ottjw@yahoo.com', from: "person@readtoday.com", subject: "Read Today Contact", reply_to: @email )
  end

end
