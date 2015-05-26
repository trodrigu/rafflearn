class RafflrsController < ApplicationController
  def index
  end
  def create
    @raffle = Rafflr.new(params[:raffle])
    @raffle.save

  end
  def new
    @page_title = "New Raffle"
    @raffle = Rafflr.new
  end
  def show
  end
end
