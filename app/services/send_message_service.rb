class SendMessageService

  def self.send(params)
    new(params).send_message_now
  end

  def initialize(params)
    @name    = params.fetch(:name)
    @from    = params.fetch(:email)
    @message = params.fetch(:message)
  end

  def send_message_now
    ContactUsMailer.send_message(name: @name, email: @from, message: @message).deliver_now!
  end

end
