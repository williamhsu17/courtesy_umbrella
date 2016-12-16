class RemoveUserIdAndLocationIdFromUmbrella < ActiveRecord::Migration[5.0]
  def change
  end
    remove_column :umbrellas, :user_id
    remove_column :umbrellas, :location_id
end
