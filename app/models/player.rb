class Player < ApplicationRecord
  has_many :hobbies
  has_many :sports, through: :hobbies

  validates :email, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion: { in: ["male", "female"] }
  validates :age, numericality: { only_integer: true }
  validates :level, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 11 }
end
