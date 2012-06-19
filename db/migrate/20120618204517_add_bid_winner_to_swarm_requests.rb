class AddBidWinnerToSwarmRequests < ActiveRecord::Migration
  def self.up
    add_column :swarm_requests, :bid_winner, :integer
  end

  def self.down
    remove_column :swarm_requests, :bid_winner
  end
end
