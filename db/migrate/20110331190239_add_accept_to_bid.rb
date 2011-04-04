class AddAcceptToBid < ActiveRecord::Migration
  def self.up
    add_column :bids, :accept, :boolean
  end

  def self.down
    remove_column :bids, :accept
  end
end
