class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :water_type, :start_date, :end_date

  has_many :comments
  has_many :users, through: :comments
end
