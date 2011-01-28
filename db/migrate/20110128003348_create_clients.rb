class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :tel1
      t.string :tel2
      t.string :contact
      t.integer :parent_id
      t.text :observation

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
