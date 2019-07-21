class ChangeColTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :user_id
  end
end
