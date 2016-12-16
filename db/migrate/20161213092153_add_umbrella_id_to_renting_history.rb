class AddUmbrellaIdToRentingHistory < ActiveRecord::Migration[5.0]
  def change
  end
    add_column :renting_histories, :umbrella_id, :integer
    add_index :renting_histories, :umbrella_id
end
