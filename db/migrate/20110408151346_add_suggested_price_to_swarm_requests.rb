class AddSuggestedPriceToSwarmRequests < ActiveRecord::Migration
  def self.up
    add_column :swarm_requests, :suggested_price, :float
  end

  def self.down
    remove_column :swarm_requests, :suggested_price
  end
end
