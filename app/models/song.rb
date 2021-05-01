# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  youtube    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#
class Song < ApplicationRecord
  belongs_to :artist, class_name: "User"
  has_many :song_playlists
  has_many :playlists, through: :song_playlists
end
