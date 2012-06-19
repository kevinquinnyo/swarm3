class RemoveRatingAverageFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :rating_average
  end

  def self.down
  end
end
