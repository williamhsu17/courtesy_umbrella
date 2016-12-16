class CreateRentingHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :renting_histories do |t|
      t.integer :start_location_id
      t.datetime :start_time
      t.integer :end_location_id
      t.datetime :end_time

      t.timestamps
    end
  end
end
