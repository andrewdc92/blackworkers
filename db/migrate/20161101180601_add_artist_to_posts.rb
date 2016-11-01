class AddArtistToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :artist, foreign_key: true
  end
end
