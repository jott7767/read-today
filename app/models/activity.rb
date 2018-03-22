class Activity < ApplicationRecord
  has_many :attached_pdfs, as: :owner
  
  def toggle_active
    toggle(:active).save
  end
end
