class CreateClientAddresses < ActiveRecord::Migration
  def self.up
    create_table :client_addresses do |t|
      t.references :client
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :district
      t.string :zipcode
      t.boolean :default

      t.timestamps
    end
  end

  def self.down
    drop_table :client_addresses
  end
end
