class AttachedPdf < ApplicationRecord
  belongs_to :owner, polymorphic: true
  has_attached_file :pdf,
                    path: ":rails_root/public/documents/pdf/:filename"

  validates_attachment_content_type :pdf, content_type: { "application/pdf" }                   
end
