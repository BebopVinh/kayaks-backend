class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :water_type, :start_date, :end_date
end
