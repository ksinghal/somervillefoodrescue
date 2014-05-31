class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.time :donor_window_start
      t.time :donor_window_end
      t.time :recipient_window_start
      t.time :recipient_window_end
      t.integer :donor_id
      t.integer :recipient_id
      t.text :instructions

      t.timestamps
    end
  end
end
