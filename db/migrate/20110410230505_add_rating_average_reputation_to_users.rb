class AddRatingAverageReputationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :rating_average_reputation, :decimal, :default => 0, :precision => 6, :scale => 2
  end

  def self.down
    remove_column :users, :rating_average_reputation
  end
end
