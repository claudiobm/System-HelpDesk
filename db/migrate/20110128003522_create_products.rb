class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :cod
      t.string :cod_universal
      t.text :description
      t.references :product_category

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
