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
require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Basic Structure" do
    it "Should have the proper Columns" do
      should have_db_column("id")
      should have_db_column("name")
      should have_db_column("youtube")
      should have_db_column("created_at")
      should have_db_column("updated_at")
    end
    it "Should have the proper associations" do
      should belong_to(:artist).class_name("User")
      should have_many(:song_playlists)
      should have_many(:playlists).through(:song_playlists)
    end
    it "Should have the proper validations" do
      should validate_presence_of("name")
      should validate_uniqueness_of("youtube")
      should allow_value("https://www.youtube.com/watch?v=nB8g3n10_Z8&t=171s").for(:youtube)
      should_not allow_value("hola").for(:youtube)
      is_expected.to validate_attached_of(:song_file)
      is_expected.to validate_content_type_of(:song_file).allowing('audio/mpeg')
    end
  end
end
