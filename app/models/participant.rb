# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  event_type :string(255)
#  event_id   :integer
#  student_id :integer
#

class Participant < ActiveRecord::Base
end
