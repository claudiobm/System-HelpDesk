class CreateTechnocalClientAddresses < ActiveRecord::Migration
  def self.up
    create_table :technocal_client_addresses do |t|
      t.references :technical
      t.references :client_address

      t.timestamps
    end
  end

  def self.down
    drop_table :technocal_client_addresses
  end
end
