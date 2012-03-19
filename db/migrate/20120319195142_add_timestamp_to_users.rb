class AddTimestampToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :timestamp, :string
  end

  def self.down
    remove_column :users, :timestamp
  end
end
