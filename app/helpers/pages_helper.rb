module PagesHelper

  def active_month
    this_month = Date.today.strftime("%B").downcase
    last_month = Date.today.months_ago(1).strftime("%B").downcase

    [this_month, last_month]
  end

  def activity_present?(month)
    active_month.include?(params[:page])
  end
end
