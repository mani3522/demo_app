# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  activated            :boolean          default(FALSE)
#  activated_at         :datetime
#  activation_digest    :string(255)
#  admin                :boolean          default(FALSE)
#  authentication_token :string(255)
#  email                :string(255)
#  name                 :string(255)
#  password_digest      :string(255)
#  remember_digest      :string(255)
#  reset_digest         :string(255)
#  reset_sent_at        :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

FactoryGirl.define do
  factory :user do
    pwd = Faker::Internet.password

    email { Faker::Internet.email }
    name { Faker::Name.name }
    password { pwd }
    password_confirmation { pwd }

    factory :admin do
      admin { true }
    end

    factory :user_with_microposts do
      transient do
        posts_count 5
      end

      after(:create) do |user, evaluator|
        create_list(:micropost, evaluator.posts_count, user: user)
      end
    end
  end
end
