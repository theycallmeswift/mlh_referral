class CreateHackathons < ActiveRecord::Migration[5.0]
  def change
    create_table :hackathons do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false

      t.timestamps null: false
    end
  end
end
