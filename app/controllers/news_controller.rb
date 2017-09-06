class NewsController < ApplicationController
  def index
    @news = NewsStory.all
  end

  def show

  end

  def new
    @story = NewsStory.new
  end

  def create
    @story = NewsStory.create(news_params)

    if @story.save
      redirect_to news_stories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def news_params
    params.require(:news_story).permit(:title, :body, :air_date)
  end
end
