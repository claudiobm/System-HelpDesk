class ClientsTechnicals < ActiveRecord::Migration
  def self.up
  	create_table :clients_technicals, :id => false do |t|
	  t.integer :technical_id
      t.integer :client_id
    end
  end

  def self.down
  	drop_table :clients_technicals
  end
end
