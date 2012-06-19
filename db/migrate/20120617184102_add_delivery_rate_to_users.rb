class AddDeliveryRateToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :delivery_rate, :float
  end

  def self.down
    remove_column :users, :delivery_rate, :float
  end
end
