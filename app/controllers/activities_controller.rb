class ActivitiesController < ApplicationController
  access all: [:show, :index], admin: :all

  def index
    if admin_signed_in?
      @activities = Activity.all.order("month ASC")
    else
      @activities = Activity.where(active: true).order("month ASC")
    end
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
    @pdfs     = @activity.attached_pdfs
    @images   = @activity.attached_images
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity.save
      redirect_to activities_path
    else
      flash[:danger] = "There was a problem saving the event"
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to activities_path
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :month, :description, :date, :url)
  end
end
