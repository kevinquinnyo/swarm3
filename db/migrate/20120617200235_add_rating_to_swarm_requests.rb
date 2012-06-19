class AddRatingToSwarmRequests < ActiveRecord::Migration
  def self.up
    add_column :swarm_requests, :rating, :float
  end

  def self.down
    remove_column :swarm_requests, :rating
  end
end
