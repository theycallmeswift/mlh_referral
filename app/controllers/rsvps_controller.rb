class RsvpsController < ApplicationController
  def create
    rsvp = current_user.rsvps.new(create_params)

    if rsvp.save
      redirect_to hackathon_path(rsvp.hackathon_id)
    else
      redirect_to hackathon_path(rsvp.hackathon_id),
        :flash => { :error => rsvp.errors.full_messages.first }
    end
  end

  def destroy
    rsvp = Rsvp.find(params[:id])

    if rsvp.destroy
      redirect_to hackathon_path(rsvp.hackathon_id)
    end
  end

  private

  def create_params
    params.require(:rsvp).permit(:hackathon_id, :referral_code)
  end
end
