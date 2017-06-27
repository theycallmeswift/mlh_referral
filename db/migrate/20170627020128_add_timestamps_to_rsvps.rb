class AddTimestampsToRsvps < ActiveRecord::Migration[5.0]
  def change
    add_timestamps(:rsvps) 
  end
end
