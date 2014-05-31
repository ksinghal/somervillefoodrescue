class AddVolunteerIdsToPickupReport < ActiveRecord::Migration
  def change
    add_column :pickup_reports, :volunteer_ids, :integer, array: true, default: []
  end
end
