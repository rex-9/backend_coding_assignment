class SportSerializer < ActiveModel::Serializer
  attributes :id, :name, :players

  has_many :players, through: :hobbies
end
