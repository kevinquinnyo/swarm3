class AddRequestRateToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :request_rate, :float
  end

  def self.down
    remove_column :swarm_requests, :suggested_price, :float
  end
end
