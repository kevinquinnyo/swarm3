class FixAddress < ActiveRecord::Migration
  
  def self.up
    add_column :swarm_requests, :address, :string
    remove_column :swarm_requests, :street_address
    remove_column :swarm_requests, :city
    remove_column :swarm_requests, :State
    remove_column :swarm_requests, :zip
  end
  
  def self.down
    add_column :swarm_requests, :zip, :integer
    add_column :swarm_requests, :State, :string
    add_column :swarm_requests, :city, :string
    add_column :swarm_requests, :street_address, :string
    remove_column :swarm_requests, :address
  end
  
end
