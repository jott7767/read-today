class NewsController < ApplicationController
  access all: [:index, :show], admin: :all
  before_action :find_story, except: [:index, :new, :create]

  def index
    @news = NewsStory.all.order('created_at DESC').paginate(page: params[:page], per_page: 3)
  end

  def show
  end

  def new
    @story = NewsStory.new
  end

  def create
    @story = current_user.news_stories.create(news_params)
    if @story.save
      redirect_to news_stories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @story.update(news_params)
    redirect_to news_stories_path
  end

  def destroy
    @story.destroy
    redirect_to news_stories_path
  end

  private

  def news_params
    params.require(:news_story).permit(:title, :body, :air_date, :embed_url, :user_id)
  end

  def find_story
    @story = NewsStory.find(params[:id])
  end
end
