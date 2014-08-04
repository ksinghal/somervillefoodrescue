class AddDairyWeightToPickupReport < ActiveRecord::Migration
  def change
    add_column :pickup_reports, :dairy_weight, :integer
  end
end
