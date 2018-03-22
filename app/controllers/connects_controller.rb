class ConnectsController < ApplicationController
  access all:[:index], admin: :all

  def index
    @connects = Connect.where(early: false)
    @early_connects = Connect.where(early: true)
  end

  def new
    @connect = Connect.new
    @attachment
  end

  def create
    @connect = Connect.create!(connect_params)
  end

  def show
  end

  def edit
  end
end
