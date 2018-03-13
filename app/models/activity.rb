class Activity < ApplicationRecord
  def toggle_active
    toggle(:active).save  
  end
end
