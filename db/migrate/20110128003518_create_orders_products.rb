class CreateOrdersProducts < ActiveRecord::Migration
  def self.up
    create_table :orders_products do |t|
      t.references :product
      t.references :order
      t.float :amount
      t.string :lote
      t.boolean :resolved
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :orders_products
  end
end
