class AddPickupIdToPickupReport < ActiveRecord::Migration
  def change
    add_column :pickup_reports, :pickup_id, :integer
  end
end
