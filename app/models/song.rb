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
  #associations
  belongs_to :artist, class_name: "User"
  has_many :song_playlists,dependent: :destroy
  has_many :playlists, through: :song_playlists
  has_one_attached :song_file
  #validations
  validates :name, presence: true
  validates :youtube, uniqueness: true,format: { with: /\bhttps:\/\/www.youtube.com\/watch\?v=.+\b/ , 
    message: "has to have the proper format" }
  #Regex might need more work
  validates :song_file, attached: true, content_type: 'audio/mpeg'
end
