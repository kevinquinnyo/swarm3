class CreateRequestRatings < ActiveRecord::Migration
  def self.up
    create_table :request_ratings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :request_ratings
  end
end