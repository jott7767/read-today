module ActivitiesHelper

  def underscore_title(activity)
    activity.gsub(" ", "_").underscore
  end
end
