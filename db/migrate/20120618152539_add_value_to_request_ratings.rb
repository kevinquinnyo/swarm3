class AddValueToRequestRatings < ActiveRecord::Migration
  def self.up
    add_column :request_ratings, :value, :float
  end

  def self.down
    remove_column :request_ratings, :value
  end
end
