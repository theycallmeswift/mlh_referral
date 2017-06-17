class Rsvp < ApplicationRecord
  attr_accessor :referral_code

  belongs_to :hackathon
  belongs_to :user
  belongs_to :referred_by,
             :class_name  => "User",
             :foreign_key => 'referred_by_user_id',
             :optional    => true

  validate :valid_referral_code, if: :referral_code
  before_create :set_referred_by_user, if: :referral_code


  private

  def valid_referral_code
  end

  def set_referred_by_user
    self.referred_by = User.find_by(referral_code: referral_code)
  end
end
