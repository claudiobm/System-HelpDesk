class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :order_type
      t.references :order_category
      t.references :client
      t.references :account
      t.references :technical
      t.datetime :technical_information
      t.string :status
      t.text :description
      t.text :observation
      t.boolean :notification
      t.boolean :first_call_fix
      t.boolean :done

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
