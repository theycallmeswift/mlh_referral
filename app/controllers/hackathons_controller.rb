class HackathonsController < ApplicationController
  def index
    @hackathons = Hackathon.all
  end

  def show
    @hackathon = Hackathon.find(params[:id])
  end
end
