class CarouselImagesController < ApplicationController
  access all: [], admin: :all
  def index
    @carousel_images = CarouselImage.all
  end

  def new
    @carousel_image = CarouselImage.new
  end

  def create
    @carousel_image = CarouselImage.new(carousel_image_params)
    if params[:carousel_image][:image].present?
      @carousel_image.image = params[:carousel_image][:image]
      if @carousel_image.save
        redirect_to carousel_images_path
      else
        flash[:danger] = @carousel_image.errors
        render :new
      end
    else
      flash[:danger] = "You forgot to upload a file"
      render :new
    end
  end

  def show
    @carousel_image = CarouselImage.find(params[:id])
  end

  def edit
  end

  def update
    binding.pry
    @carousel_image = CarouselImage.find(params[:id])
    @carousel_image.toggle_active
    redirect_to carousel_images_path
  end

  def destroy
    @carousel_image = CarouselImage.find(params[:id])
    @carousel_image.destroy
    redirect_to carousel_images_path
  end

  private

  def carousel_image_params
    params.require(:carousel_image).permit(:active, :image)
  end
end
