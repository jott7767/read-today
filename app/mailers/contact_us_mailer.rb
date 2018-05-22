class ContactUsMailer < ApplicationMailer

  def send_message(name:, email:, message:)
    @message = message
    @name    = name
    @email   = email
    mail(to: 'michaelsonj@deseretmgt.com', subject: "Read Today Contact - #{@email}", reply_to: @email )
  end

end
