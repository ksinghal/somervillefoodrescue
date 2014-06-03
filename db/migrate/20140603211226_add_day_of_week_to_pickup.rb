class AddDayOfWeekToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :day_of_week, :string
  end
end
