class SharedStoriesController < ApplicationController

  def index
    @approved_stories = SharedStory.where(approved: true)
    @pending_stories = SharedStory.where(approved: false)
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end



end
