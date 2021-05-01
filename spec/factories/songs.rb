# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  youtube    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :song do
    name { Faker::Name.name }
    youtube { "https://www.youtube.com/watch?v=#{rand(100)}" }
  end
end
