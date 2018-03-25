class Connect < ApplicationRecord
  has_one :attached_pdf, as: :owner
  # accepts_nested_attributes_for :attached_pdf
  scope :early, -> { where(early: true) }
  scope :late,  -> { where(early: false)}
  def display_name
    if early
      "#{month} #{year} Early Connect"
    else
      "#{month} #{year} 123 Connect"
    end
  end
end
