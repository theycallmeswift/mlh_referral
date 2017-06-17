class AddColumnToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_column :rsvps, :referred_by_user_id, :integer
  end
end
