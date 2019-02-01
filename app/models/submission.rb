class Submission < ApplicationRecord
  belongs_to :student
  has_many :submission_comments
end
