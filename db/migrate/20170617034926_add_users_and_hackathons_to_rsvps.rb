class AddUsersAndHackathonsToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_reference :rsvps, :user, index: true
    add_reference :rsvps, :hackathon, index: true

    add_foreign_key :rsvps, :users
    add_foreign_key :rsvps, :hackathons
  end
end
