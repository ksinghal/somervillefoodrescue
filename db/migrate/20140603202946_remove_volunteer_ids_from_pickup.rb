class RemoveVolunteerIdsFromPickup < ActiveRecord::Migration
  def change
    remove_column :pickups, :volunteer_ids, :integer
  end
end
