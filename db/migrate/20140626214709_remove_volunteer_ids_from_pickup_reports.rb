class RemoveVolunteerIdsFromPickupReports < ActiveRecord::Migration
  def change
  	remove_column :pickup_reports, :volunteer_ids, :array
  end
end
