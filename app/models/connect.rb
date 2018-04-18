class Connect < ApplicationRecord
  has_one :attached_pdf, as: :owner, dependent: :destroy
  # accepts_nested_attributes_for :attached_pdf
  scope :early, -> { where(early: true) }
  scope :late,  -> { where(early: false)}

  def display_name
    month_name = Date::MONTHNAMES[self.month.to_i]
    if early
      "#{month_name} #{year} Early Connect"
    else
      "#{month_name} #{year} 123 Connect"
    end
  end
end
