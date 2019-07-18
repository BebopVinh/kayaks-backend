class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :water_type
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
