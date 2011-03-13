class RenameRegionInTechnical < ActiveRecord::Migration

  def self.up
  	rename_column(:technicals, :regions_id, :region_id)
  end

  def self.down
	rename_column(:technicals, :region_id, :regions_id)
  end
  
end
