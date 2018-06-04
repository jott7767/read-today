class CarouselImage < ApplicationRecord
  has_attached_file :image,
                    path: "./public/carousel/#{Rails.env}/:id/:filename",
                    url:  "/carousel/#{Rails.env}/:id/:filename"
  do_not_validate_attachment_file_type :image

  def toggle_active
    toggle(:active).save
  end
end
