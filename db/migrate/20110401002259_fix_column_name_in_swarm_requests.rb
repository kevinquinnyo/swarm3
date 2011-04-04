class FixColumnNameInSwarmRequests < ActiveRecord::Migration
  def self.up
    rename_column :swarm_requests, :accept, :accepted
  end

  def self.down
  end
end
