class CreateAccountDepartments < ActiveRecord::Migration
  def self.up
    create_table :account_departments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :account_departments
  end
end
