class ToggleActivityController < ApplicationController

  def update
    activity = Activity.find(params[:id])
    activity.toggle(:active).save
    redirect_to activities_path
  end
end
