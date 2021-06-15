class AddPublicToPlaylists < ActiveRecord::Migration[6.1]
  def change
    add_column :playlists, :public, :boolean, default: false
  end
end
