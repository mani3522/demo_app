class StudyMaterial < ActiveRecord::Base
  has_many :material
  belongs_to :study
end
