class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.text :instructions

      t.timestamps
    end
  end
end
