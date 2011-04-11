class AddDeliveryCountToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :delivery_count, :integer, :default => 0
  end 

  def self.down
    remove_column :users, :delivery_count, :integer
  end
end
