class AddCoverImageUrlToHackathons < ActiveRecord::Migration[5.0]
  def change
    add_column :hackathons, :cover_image_url, :string
  end
end
