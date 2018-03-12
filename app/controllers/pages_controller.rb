class PagesController < ApplicationController
  include PagesHelper

  def index
    render :index
  end

end
