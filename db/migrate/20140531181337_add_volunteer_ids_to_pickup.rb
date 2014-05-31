class AddVolunteerIdsToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :volunteer_ids, :integer, array: true, default: []
  end
end
