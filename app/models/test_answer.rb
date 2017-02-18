class TestAnswer < ActiveRecord::Base
  belongs_to :test
  has_many :question 
end
