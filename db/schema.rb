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

ActiveRecord::Schema.define(version: 2019_07_30_035658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name", default: ""
    t.float "quantity_in_stock", default: 0.0
    t.float "quantity_required", default: 0.0
    t.string "supplier", default: ""
    t.float "price", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit_of_measurement", default: "unit"
    t.float "atomic_unit", default: 0.0
    t.string "supplier_url", default: ""
    t.string "product_name", default: ""
    t.string "supplier_email", default: ""
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "quantity_in_stock"
    t.integer "quantity_required"
    t.float "base_price"
    t.float "sales_price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "ingredient_id"
    t.float "measurement"
    t.string "unit_of_measurement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "users_ingredient_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
