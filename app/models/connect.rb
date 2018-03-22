class Connect < ApplicationRecord
  has_one :attached_pdf, as: :owner
  # accepts_nested_attributes_for :attached_pdf
end
