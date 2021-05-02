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
FactoryBot.define do
  factory :song do
    name { Faker::Name.name }
    youtube { "https://www.youtube.com/watch?v=#{rand(100)}" }
    user
  end
end
