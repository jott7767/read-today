class MailController < ApplicationController

  def create
    SendMessageService.send(params)
    flash[:success] = "Message Sent!"
    redirect_to pages_index_path(page: 'contact_us')
  end

end
