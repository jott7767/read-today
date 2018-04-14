class AttachedImage < ApplicationRecord
  belongs_to :owner, polymorphic: true
  has_attached_file :image,
                    path: "./public/images/#{Rails.env}/:id/:filename",
                    url:  "/images/#{Rails.env}/:id/:filename"
  do_not_validate_attachment_file_type :image
  validates :image, attachment_presence: true
end
