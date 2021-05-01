# == Schema Information
#
# Table name: song_playlists
#
#  id          :bigint           not null, primary key
#  song_id     :bigint           not null
#  playlist_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class SongPlaylist < ApplicationRecord
  belongs_to :song
  belongs_to :playlist
end
