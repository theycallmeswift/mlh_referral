class HackathonsController < ApplicationController
  before_filter :set_rsvp, only: :show

  def index
    @hackathons = Hackathon.all
  end

  def show
    @hackathon = Hackathon.find(params[:id])
  end

  private

  def set_rsvp
    @rsvp =
      Rsvp.where("user_id = ? AND hackathon_id = ?", User.last.id, params[:id]).first
  end
end
