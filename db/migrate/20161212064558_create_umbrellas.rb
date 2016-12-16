class CreateUmbrellas < ActiveRecord::Migration[5.0]
  def change
    create_table :umbrellas do |t|
      t.integer :location_id
      t.integer :user_id
      t.integer :enterprise_id

      t.timestamps
    end
      add_index :umbrellas, :location_id
      add_index :umbrellas, :user_id
      add_index :umbrellas, :enterprise_id
  end
end
