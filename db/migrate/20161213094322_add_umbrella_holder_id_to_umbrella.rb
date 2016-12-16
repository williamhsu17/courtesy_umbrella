class AddUmbrellaHolderIdToUmbrella < ActiveRecord::Migration[5.0]
  def change
  end
    add_column :umbrellas, :umbrella_holder_id, :integer
    add_column :umbrellas, :umbrella_holder_type, :string
    add_index :umbrellas, [:umbrella_holder_id, :umbrella_holder_type]
end
