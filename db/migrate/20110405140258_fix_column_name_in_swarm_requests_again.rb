class FixColumnNameInSwarmRequestsAgain < ActiveRecord::Migration
  def self.up
    rename_column :swarm_requests, :accepted, :auction_closed
  end

  def self.down
  end
end
