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
    end
  end
end
