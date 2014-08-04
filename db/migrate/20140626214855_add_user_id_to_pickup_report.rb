class AddUserIdToPickupReport < ActiveRecord::Migration
  def change
    add_column :pickup_reports, :user_id, :integer
  end
end
