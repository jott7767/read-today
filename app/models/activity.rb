class Activity < ApplicationRecord
  has_many :attached_pdfs,   as: :owner, dependent: :destroy
  has_many :attached_images, as: :owner, dependent: :destroy
  has_one  :banner,                      dependent: :destroy

  validates :name,        presence: true
  validates :month,       presence: true
  validates :description, presence: true


  def toggle_active
    toggle(:active).save
  end
end
