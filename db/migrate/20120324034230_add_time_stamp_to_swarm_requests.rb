class AddTimeStampToSwarmRequests < ActiveRecord::Migration
  def self.up
    add_column :swarm_requests, :timestamp, :timestamp
  end

  def self.down
    remove_column :swarm_requests, :timestamp
  end
end

