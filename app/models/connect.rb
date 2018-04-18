class Connect < ApplicationRecord
  has_one :attached_pdf, as: :owner, dependent: :destroy
  # accepts_nested_attributes_for :attached_pdf
  scope :early, -> { where(early: true) }
  scope :late,  -> { where(early: false)}

  def display_name
    month_name = Date::MONTHNAMES[self.month.to_i]
    if early
      "#{month} #{year} Early Connect"
    else
      "#{month} #{year} 123 Connect"
    end
  end
end
