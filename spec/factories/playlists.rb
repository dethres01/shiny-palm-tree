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
FactoryBot.define do
  factory :playlist do
    name { "MyString" }
    user_id { nil }
  end
end
