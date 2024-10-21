# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_21_151700) do
  create_table "business_zones", force: :cascade do |t|
    t.string "zone_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hourly_rates", force: :cascade do |t|
    t.string "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_spots", force: :cascade do |t|
    t.string "block_number"
    t.integer "time_limit_id", null: false
    t.integer "street_id", null: false
    t.string "payment_time"
    t.integer "total_space"
    t.integer "hourly_rate_id", null: false
    t.integer "mobile_payment_number"
    t.integer "business_zone_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_zone_id"], name: "index_parking_spots_on_business_zone_id"
    t.index ["hourly_rate_id"], name: "index_parking_spots_on_hourly_rate_id"
    t.index ["street_id"], name: "index_parking_spots_on_street_id"
    t.index ["time_limit_id"], name: "index_parking_spots_on_time_limit_id"
  end

  create_table "streets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_limits", force: :cascade do |t|
    t.string "time_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "parking_spots", "business_zones"
  add_foreign_key "parking_spots", "hourly_rates"
  add_foreign_key "parking_spots", "streets"
  add_foreign_key "parking_spots", "time_limits"
end
