module ActivitiesHelper

  def underscore_title(activity)
    activity.gsub(" ", "_").underscore
  end

  def viewable?(month)
    if admin_signed_in?
      true
    else
      clickable_months.include?(month)
    end
  end

  private

  def clickable_months
    this_month = Date.today.strftime("%B").downcase
    next_month = Date.today.next_month.strftime("%B").downcase

    [this_month, next_month]
  end
end
