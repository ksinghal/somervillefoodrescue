class RemoveDairyWieghtFromPickupReport < ActiveRecord::Migration
  def change
    remove_column :pickup_reports, :dairy_wieght, :integer
  end
end
