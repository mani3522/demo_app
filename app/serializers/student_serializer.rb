# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  date_of_birth :date
#  first_name    :string(255)
#  last_name     :string(255)
#  middle_name   :string(255)
#  mobile        :string(255)
#  phone         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :last_name, :date_of_birth, :phone, :mobile
end
