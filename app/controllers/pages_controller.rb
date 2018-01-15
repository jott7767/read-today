class PagesController < ApplicationController
  include PagesHelper

  def index
    unless ignore_params || admin_signed_in?
      if active_month?
        render :index
      else
        @come_back = activity_months[activity_to_month[params[:page]]].first.titleize
        render :inactivity
      end
    end
  end

  private

  def ignore_params
    !activity_present?
  end
end
