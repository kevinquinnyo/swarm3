class FixColumnNameInBidsAgain < ActiveRecord::Migration
  def self.up
    rename_column :bids, :visible, :accepted
  end

  def self.down
  end
end
