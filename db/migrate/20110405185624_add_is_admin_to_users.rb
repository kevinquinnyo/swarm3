class AddIsAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :boolean
  end

  def self.down
  end
end
