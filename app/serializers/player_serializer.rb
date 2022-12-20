class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :email, :age, :level, :gender

  has_many :sports, through: :hobbies
end
