class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  def check_active_user
    forbidden! unless current_user.active
  end
end
