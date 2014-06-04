class AddOidToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :oid
  end
end
