class Hackathon < ApplicationRecord
  has_many :rsvps
  has_many :attendees, through: :rsvps, source: :attendee
end
