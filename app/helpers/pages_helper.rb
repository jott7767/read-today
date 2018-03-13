module PagesHelper


  def activity_present?(month)
    active_month.include?(params[:page])
  end
end
