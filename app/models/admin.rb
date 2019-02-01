class Admin < ApplicationRecord
  has_secure_password
  has_many  :cohorts
  has_many(:students, {through: :cohort})
  has_many :student_notes

  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true, length: { minimum: 6 }



end
