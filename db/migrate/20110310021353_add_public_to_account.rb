class AddPublicToAccount < ActiveRecord::Migration
  def self.up
    add_column :accounts, :is_actived, :boolean
  end

  def self.down
    remove_column :accounts, :is_actived
  end
end
