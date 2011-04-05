class RemoveAdmins < ActiveRecord::Migration
  def self.up
    drop_table :admins
  end

  def self.down
  end
end
