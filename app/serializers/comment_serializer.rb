class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :trip, :owner

  def trip
    {trip_id: self.object.trip.id,
      trip_name: self.object.trip.name}
    end

  def owner
    {owner_id: self.object.user.id,
    owner_name: self.object.user.name}
  end


end
