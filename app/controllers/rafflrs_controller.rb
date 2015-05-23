class RafflrsController < ApplicationController
  def index
  end
  def create
    @raffle = Raffle.new(params[:raffle])
    
  end
  def new
    @page_title = "New Raffle"
    @raffle = Raffle.new
  end
end
