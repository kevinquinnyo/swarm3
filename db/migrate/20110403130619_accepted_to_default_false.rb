class AcceptedToDefaultFalse < ActiveRecord::Migration
  def self.up
    change_column :swarm_requests, :accepted, :boolean, :default => false
  end

  def self.down
  end
end
