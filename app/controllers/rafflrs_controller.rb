class RafflrsController < ApplicationController
  def index
  end
  def create
    @raffle = Rafflr.new(rafflr_params)
    if @raffle.save
      # do something
      flash[:success] = "Welcome to Rafflr"
      redirect_to @raffle 
    end
  end

  def new
    @page_title = "New Raffle"
    @raffle = Rafflr.new
  end

  private
    def rafflr_params
      params.require(:rafflr).permit( :players, :winners)
    end
end
