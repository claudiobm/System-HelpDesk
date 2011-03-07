class RenameTableEquipmentToEquipment < ActiveRecord::Migration
  def self.up
	rename_table(:equipment, :equipments)
  end

  def self.down
  	rename_table(:equipments, :equipment)
  end
end
