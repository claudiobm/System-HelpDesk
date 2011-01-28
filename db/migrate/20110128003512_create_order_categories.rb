class CreateOrderCategories < ActiveRecord::Migration
  def self.up
    create_table :order_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :order_categories
  end
end
