class Rsvp < ApplicationRecord
  attr_accessor :referral_code

  belongs_to :hackathon
  belongs_to :attendee,
             :class_name => 'User',
             :foreign_key => 'user_id'
  belongs_to :referred_by,
             :class_name  => "User",
             :foreign_key => 'referred_by_user_id',
             :optional    => true

  validate :ensure_valid_referral_code, if: :referral_present?
  before_create :set_referred_by_user, if: :referral_present?

  private

  def ensure_valid_referral_code
    if self_referral?
      errors.add(:referral_code, 'cannot be your own.')
    elsif !referral_exists?
      errors.add(:referral_code, 'is invalid, please verify and try again.')
    end
  end

  def referral_present?
    !referral_code.blank?
  end

  def referral_exists?
    User.find_by(referral_code: referral_code)
  end

  def self_referral?
    attendee.referral_code == referral_code
  end

  def set_referred_by_user
    self.referred_by = User.find_by(referral_code: referral_code)
  end
end
