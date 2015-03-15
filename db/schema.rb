# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150315064515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "name"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city_village"
    t.string   "district"
    t.string   "state"
    t.string   "country"
    t.string   "pin"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "mobile"
    t.string   "phone"
  end

  add_index "customers", ["order_id"], name: "index_customers_on_order_id", using: :btree

  create_table "medicine_orders", force: :cascade do |t|
    t.string   "medicine_name"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "order_id"
  end

  add_index "medicine_orders", ["order_id"], name: "index_medicine_orders_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "orders"
  add_foreign_key "medicine_orders", "orders"
end
