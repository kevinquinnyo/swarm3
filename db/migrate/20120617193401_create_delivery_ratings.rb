class CreateDeliveryRatings < ActiveRecord::Migration
  def self.up
    create_table :delivery_ratings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :delivery_ratings
  end
end
