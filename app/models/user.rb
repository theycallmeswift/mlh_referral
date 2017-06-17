class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable

  has_many :rsvps

  before_create :set_referral_code

  private

  def generate_referral_code
    Digest::SHA1.hexdigest([ id, Time.now ].join)[0..5]
  end

  def set_referral_code
    self.referral_code = generate_referral_code
  end
end
