class ActivitiesController < ApplicationController
  def index
    if admin_signed_in?
      @activities = Activity.all
    else
      @activities = Activity.where(active: true)
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
  end

  def edit
    @activiy = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require
  end
end
