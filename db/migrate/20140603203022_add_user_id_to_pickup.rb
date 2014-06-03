class AddUserIdToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :user_id, :integer
  end
end
