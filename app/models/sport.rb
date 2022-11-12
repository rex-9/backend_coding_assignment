class Sport < ApplicationRecord
  has_many :hobbies
  has_many :players, through: :hobbies

  validates :name, presence: true, uniqueness: true
end
