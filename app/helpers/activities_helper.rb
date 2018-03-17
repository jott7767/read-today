module ActivitiesHelper

  def underscore_title(activity)
    activity.gsub(" ", "_").underscore
  end

  def viewable?(month)
    if admin_signed_in?
      true
    else
      clickable_months.include?(translate_month(month))
    end
  end

  def months_for_select
    months = [
      ["January",   1],
      ["February",  2],
      ["March",     3],
      ["April",     4],
      ["May",       5],
      ["June",      6],
      ["July",      7],
      ["August",    8],
      ["September", 9],
      ["October",   10],
      ["November",  11],
      ["December",  12]
    ]
  end

  def translate_month(num)
    Date::MONTHNAMES[num.to_i]
  end

  private

  def clickable_months
    this_month = Date.today.strftime("%B").downcase
    next_month = Date.today.next_month.strftime("%B").downcase

    [this_month, next_month]
  end
end
