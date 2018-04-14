class FamilyGroup < ApplicationRecord
  has_many :readers
  validates :name,       presence: true
  validates :street,     presence: true
  validates :state_code, presence: true
  validates :zip,        presence: true
  validates :children,   presence: true     
end
