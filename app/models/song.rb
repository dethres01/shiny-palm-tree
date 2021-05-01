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
class Song < ApplicationRecord
  belongs_to :artist, class_name: "User"
end
