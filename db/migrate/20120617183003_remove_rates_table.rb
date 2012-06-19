class RemoveRatesTable < ActiveRecord::Migration
  def self.up
    drop_table :rates
  end

  def self.down
  end
end
