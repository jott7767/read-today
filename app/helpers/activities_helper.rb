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

  def summer_reading_time
    %w(April May June July August).include?(Date::MONTHNAMES[Date.today.month])
  end

  def permit_summer_reading_submission
    %w(June July).include?(Date::MONTHNAMES[Date.today.month])
  end

  def display_date(activity)
    month = translate_month(activity.month)
    if activity.date.present?
      "#{month} #{activity.date.to_i.ordinalize}"
    else
      month
    end
  end

  def embed_video?(url)
    url.include?('youtu.be') || url.include?('youtube')
  end

  private

  def clickable_months
    this_month = Date.today.strftime("%B").downcase
    next_month = Date.today.next_month.strftime("%B").downcase

    [this_month, next_month]
  end
end
