class RemoveRatingAverageReputationFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :rating_average_reputation
  end

  def self.down
  end
end
