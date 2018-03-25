class AttachedPdf < ApplicationRecord
  belongs_to :owner, polymorphic: true
  has_attached_file :pdf,
                    path: "documents/pdf/:filename",
                    s3_region: "us-east-2" 
  do_not_validate_attachment_file_type :pdf
end
