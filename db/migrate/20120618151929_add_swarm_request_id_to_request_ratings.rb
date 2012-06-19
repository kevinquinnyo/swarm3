class AddSwarmRequestIdToRequestRatings < ActiveRecord::Migration
  def self.up
    add_column :request_ratings, :swarm_request_id, :integer
  end

  def self.down
    remove_column :request_ratings, :swarm_request_id
  end
end
