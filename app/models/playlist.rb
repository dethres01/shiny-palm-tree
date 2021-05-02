# == Schema Information
#
# Table name: playlists
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Playlist < ApplicationRecord
  belongs_to :user
  has_many :song_playlists
  has_many :songs, through: :song_playlists
end
