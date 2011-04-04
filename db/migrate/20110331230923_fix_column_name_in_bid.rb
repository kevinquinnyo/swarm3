class FixColumnNameInBid < ActiveRecord::Migration
  def self.up
    rename_column :bids, :accept, :visible
  end

  def self.down
  end
end
