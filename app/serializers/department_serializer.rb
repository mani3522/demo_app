# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  section    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :section
end
