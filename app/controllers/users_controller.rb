class UsersController < ApplicationController
  before_filter :referred_users

  def account
  end

  private

  def referred_users
    @referred_users ||=
      Rsvp.includes(:attendee, :hackathon).where(referred_by: current_user)
    end
end
