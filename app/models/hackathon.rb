class Hackathon < ApplicationRecord
  has_many :rsvps
  has_many :attendees, through: :rsvps, source: :user
end


# referral ->
# id
# subject_type
# subject_id
# referred_by_id
# referred_to_id
