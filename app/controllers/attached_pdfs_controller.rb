class AttachedPdfsController < ApplicationController

  def new
    @activity = Activity.find(params[:activity_id])
    @pdf      = @activity.attached_pdfs.new
  end

  def create
    attachment = Activity.find(params[:activity_id]).attached_pdfs.new(attachment_params)
    if attachment.valid?
      attachment.save!
      redirect_to activity_path(Activity.find(attachment.owner_id))
    else
      errors = ""
      attachment.errors.messages.each { |k, v| errors << "Error: #{k.to_s v}" }
      flash[:danger] = errors
      render 'new'
    end
  end

  def destroy

  end

  private

  def attachment_params
    params.require(:attached_pdf).permit(:name, :pdf)
  end

end
