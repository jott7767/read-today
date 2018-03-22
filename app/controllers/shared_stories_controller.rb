class SharedStoriesController < ApplicationController
  access all: [:index, :create], admin: :all

  def index
    @approved_stories = SharedStory.where(approved: true)
    @pending_stories = SharedStory.where(approved: false)
    @story = SharedStory.new
  end

  def new
  end

  def create
    @shared_story = SharedStory.create(story_params)
    if @shared_story.save
      flash[:success] = "Your story has been submitted for review!"
    else
      flash[:danger] = "Could not create story"
      @shared_story.errors.messages.each do |key, value|
        flash[:danger] << "\n#{key} #{value.first}".titleize
      end
    end
    redirect_to shared_stories_path
  end

  def show
  end

  def edit
    @story = SharedStory.find(params[:id])
    if params[:approved]
      @story.update!(approved: true)
      flash[:info] = "The story was approved!"
    end
    redirect_to shared_stories_path
  end

  def update

  end

  def destroy
    @story = SharedStory.find(params[:id])
    @story.destroy!
    flash[:info] = "The story was deleted"
    redirect_to shared_stories_path
  end

  private

  def story_params
    params.require(:shared_story).permit(:name, :age, :body, :synopsis, :phone,
      :email, :approved)
  end



end
