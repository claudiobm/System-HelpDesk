class RemoveIdToTechnicalsEquipment < ActiveRecord::Migration
  def self.up
	remove_column :technicals_equipments, :created_at
	remove_column :technicals_equipments, :updated_at
  end

  def self.down
	add_column :technicals_equipments, :created_at, :datetime
	add_column :technicals_equipments, :updated_at, :datetime
  end
end
