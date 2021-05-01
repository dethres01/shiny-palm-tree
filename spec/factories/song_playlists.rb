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
FactoryBot.define do
  factory :song_playlist do
    song { nil }
    playlist { nil }
  end
end
