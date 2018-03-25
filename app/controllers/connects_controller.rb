class ConnectsController < ApplicationController
  access all:[:index], admin: :all

  def index
    @connects       = Connect.late
    @early_connects = Connect.early
  end

  def new
    @connect = Connect.new
  end

  def create
    if params[:pdf]
      @connect = Connect.new(connect_params)
      info = CreateAttachedPdfService.new(@connect, pdf: params[:pdf]).run
      if info[:success]
        flash[:success] = info[:message]
        redirect_to connects_path
      else
        flash[:danger] = info[:message]
        render :new
      end
    else
      flash[:danger] = "You forgot to attach a pdf"
      render :new
    end
  end

  def show
  end

  def edit
    @connect = Connect.find(params[:id])
  end

  def update
    @connect = Connect.find(params[:id])
    if @connect.update(connect_params)
      flash[:success] = "Updated"
      redirect_to connects_path
    else
      flash[:danger] = "There was a problem"
    end
  end

  private

  def connect_params
    params.require(:connect).permit(:month, :year, :early)
  end
end
