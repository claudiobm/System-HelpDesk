# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110128003527) do

  create_table "account_departments", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "account_department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_addresses", :force => true do |t|
    t.integer  "client_id"
    t.string   "title"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "district"
    t.string   "zipcode"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "contact"
    t.integer  "parent_id"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "amount"
    t.datetime "delivery_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "order_type_id"
    t.integer  "order_category_id"
    t.integer  "client_id"
    t.integer  "account_id"
    t.integer  "technical_id"
    t.datetime "technical_information"
    t.string   "status"
    t.text     "description"
    t.text     "observation"
    t.boolean  "notification"
    t.boolean  "first_call_fix"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.float    "amount"
    t.string   "lote"
    t.boolean  "resolved"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "cod"
    t.string   "cod_universal"
    t.text     "description"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technicals", :force => true do |t|
    t.string   "name"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "nextel"
    t.string   "email"
    t.integer  "regions_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technicals_equipments", :force => true do |t|
    t.integer  "equipment_id"
    t.integer  "technical_id"
    t.boolean  "confirmation"
    t.boolean  "archive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technocal_client_addresses", :force => true do |t|
    t.integer  "technical_id"
    t.integer  "client_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
