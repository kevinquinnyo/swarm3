class AddAcceptToSwarmRequest < ActiveRecord::Migration
  def self.up
    add_column :swarm_requests, :accept, :boolean
  end

  def self.down
    remove_column :swarm_requests, :accept
  end
end
