class HomeController < ApplicationController
  def index
    @carousel_images = CarouselImage.where(active: true)
  end
end
