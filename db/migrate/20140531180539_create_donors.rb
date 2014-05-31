class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.text :instructions

      t.timestamps
    end
  end
end
