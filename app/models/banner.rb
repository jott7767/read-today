class Banner < ApplicationRecord
  belongs_to :activity
  has_attached_file :image,
                    path: "./public/banners/#{Rails.env}/:id/:filename",
                    url:  "/banners/#{Rails.env}/:id/:filename"
  do_not_validate_attachment_file_type :image                  
end
