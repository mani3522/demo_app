class Question < ActiveRecord::Base
  belongs_to :subject
  belongs_to :staff
end
