# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_05_233214) do

  create_table "horses", force: :cascade do |t|
    t.string "name"
    t.integer "owner_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_horses_on_owner_id"
    t.index ["user_id"], name: "index_horses_on_user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_owners_on_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.string "date"
    t.integer "horse_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["horse_id"], name: "index_rides_on_horse_id"
    t.index ["service_id"], name: "index_rides_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "label"
    t.integer "fee"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "horses", "owners"
  add_foreign_key "horses", "users"
  add_foreign_key "owners", "users"
  add_foreign_key "rides", "horses"
  add_foreign_key "rides", "services"
  add_foreign_key "services", "users"
end
