class AddReferralCodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :referral_code, :string, null: false, unique: true

    add_index :users, :referral_code
  end
end
