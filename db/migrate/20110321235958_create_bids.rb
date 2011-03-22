class CreateBids < ActiveRecord::Migration
  def self.up
    create_table :bids do |t|
      t.float :price
      t.integer :user_id
      t.integer :swarm_request_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bids
  end
end
