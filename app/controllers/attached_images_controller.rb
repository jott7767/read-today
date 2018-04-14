class AttachedImagesController < ApplicationController

  def new
    @image    = AttachedImage.new
    @activity = params[:activity_id]
  end

  def create

  end

  def destroy

  end

end
