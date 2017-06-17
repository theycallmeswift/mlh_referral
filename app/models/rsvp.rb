class Rsvp < ApplicationRecord
  attr_accessor :referral_code
  
  belongs_to :hackathon
  belongs_to :user
end
