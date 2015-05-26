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

  def show
    @raffle = Rafflr.find(params[:id])
    @raffle_players =@raffle.players.split(/\s+/)
    @raffle_winners = @raffle_players.shuffle.pop(@raffle.number_of_winners)
  end

  def run_raffle
  end

  private
    def rafflr_params
      params.require(:rafflr).permit( :players, :number_of_winners)
    end
end
