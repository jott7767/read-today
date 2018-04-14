class AttachedImagesController < ApplicationController

  def new
    @activity = Activity.find(params[:activity_id])
    @image    = @activity.attached_images.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    if params[:attached_image]
      @image       = @activity.attached_images.new
      @image.image = params[:attached_image][:image]
      @image.save!
      redirect_to activity_path(@activity)
    else
      redirect_to activity_path(@activity)
    end
  end

  def destroy

  end

end
