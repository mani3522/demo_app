# == Schema Information
#
# Table name: subjects
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#

class Subject < ActiveRecord::Base
  belongs_to :department
  has_many :material
end
