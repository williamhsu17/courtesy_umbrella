class CreateUmbrellaRentHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :umbrella_rent_histories do |t|
      t.integer :umbrella_id
      t.integer :user_id
      t.integer :start_location_id
      t.datetime :start_time
      t.integer :end_location_id
      t.datetime :end_time
      t.integer :amount

      t.timestamps
    end
    add_index :umbrella_rent_histories, :umbrella_id
    add_index :umbrella_rent_histories, :user_id
  end
end
