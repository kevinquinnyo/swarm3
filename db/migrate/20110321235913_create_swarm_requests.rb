class CreateSwarmRequests < ActiveRecord::Migration
  def self.up
    create_table :swarm_requests do |t|
      t.string :item
      t.string :street_address
      t.string :city
      t.string :State
      t.integer :zip
      t.float :lat
      t.float :lng
      t.integer :user_id
      t.string :delivery_instructions

      t.timestamps
    end
  end

  def self.down
    drop_table :swarm_requests
  end
end
