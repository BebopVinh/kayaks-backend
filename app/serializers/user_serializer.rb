class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :comments
  has_many :trips, through: :comments




end
