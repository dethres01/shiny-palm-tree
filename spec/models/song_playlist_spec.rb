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
require 'rails_helper'

RSpec.describe SongPlaylist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
