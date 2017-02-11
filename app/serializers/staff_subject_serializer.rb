# == Schema Information
#
# Table name: staff_subjects
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  staff_id   :integer
#  subject_id :integer
#

class StaffSubjectSerializer < ActiveModel::Serializer
  attributes :id, :staff_id, :subject_id
end
