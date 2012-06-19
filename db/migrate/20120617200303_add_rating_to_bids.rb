class AddRatingToBids < ActiveRecord::Migration
  def self.up
    add_column :bids, :rating, :float
  end

  def self.down
    remove_column :bids, :rating
  end
end
