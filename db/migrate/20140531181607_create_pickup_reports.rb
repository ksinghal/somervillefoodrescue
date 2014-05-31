class CreatePickupReports < ActiveRecord::Migration
  def change
    create_table :pickup_reports do |t|
      t.integer :donor_id
      t.integer :recipient_id
      t.integer :produce_weight
      t.integer :dairy_wieght
      t.integer :bread_weight
      t.integer :meat_weight
      t.integer :other_weight

      t.timestamps
    end
  end
end
