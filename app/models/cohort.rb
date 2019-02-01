class Cohort < ApplicationRecord
  has_many :students
  has_many :admins
  has_many :assignments
  has_many :events
end
