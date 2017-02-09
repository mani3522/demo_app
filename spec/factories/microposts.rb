# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  picture    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_microposts_on_user_id                 (user_id)
#  index_microposts_on_user_id_and_created_at  (user_id,created_at)
#

FactoryGirl.define do
  factory :micropost do
    content { Faker::Lorem.sentence }

    user
  end
end

