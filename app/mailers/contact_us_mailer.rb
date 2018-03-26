class ContactUsMailer < ApplicationMailer

  def send_message(name:, from:, message:)
    @message = message
    mail(to: 'michaelsonj@deseretmgt.com', subject: "Read Today Contact", from: from)
  end

end
