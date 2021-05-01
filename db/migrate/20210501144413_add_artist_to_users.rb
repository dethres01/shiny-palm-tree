class AddArtistToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :artist_id, :integer
    add_foreign_key :songs, :users, column: :artist_id
  end
end
