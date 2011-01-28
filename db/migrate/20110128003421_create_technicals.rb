class CreateTechnicals < ActiveRecord::Migration
  def self.up
    create_table :technicals do |t|
      t.string :name
      t.string :tel1
      t.string :tel2
      t.string :nextel
      t.string :email
      t.references :regions

      t.timestamps
    end
  end

  def self.down
    drop_table :technicals
  end
end
