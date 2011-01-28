class CreateTechnicalsEquipments < ActiveRecord::Migration
  def self.up
    create_table :technicals_equipments do |t|
      t.references :equipment
      t.references :technical
      t.boolean :confirmation
      t.boolean :archive

      t.timestamps
    end
  end

  def self.down
    drop_table :technicals_equipments
  end
end
