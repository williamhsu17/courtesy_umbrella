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

ActiveRecord::Schema.define(version: 20161213094322) do

  create_table "enterprises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "station"
    t.integer  "exit_number"
    t.integer  "longitude"
    t.integer  "latitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["station"], name: "index_locations_on_station"
  end

  create_table "renting_histories", force: :cascade do |t|
    t.integer  "start_location_id"
    t.datetime "start_time"
    t.integer  "end_location_id"
    t.datetime "end_time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "umbrella_id"
    t.index ["umbrella_id"], name: "index_renting_histories_on_umbrella_id"
  end

  create_table "umbrellas", force: :cascade do |t|
    t.integer  "enterprise_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "umbrella_holder_id"
    t.string   "umbrella_holder_type"
    t.index ["enterprise_id"], name: "index_umbrellas_on_enterprise_id"
    t.index ["umbrella_holder_id", "umbrella_holder_type"], name: "index_umbrellas_on_umbrella_holder_id_and_umbrella_holder_type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
