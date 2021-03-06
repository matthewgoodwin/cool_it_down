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

ActiveRecord::Schema.define(version: 20170511183039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bevs", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.decimal  "cost",       precision: 10, scale: 2
    t.integer  "lounge_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "cat"
    t.string   "style"
    t.string   "region"
    t.string   "nation"
    t.index ["lounge_id"], name: "index_bevs_on_lounge_id", using: :btree
  end

  create_table "lounges", force: :cascade do |t|
    t.string   "name"
    t.string   "cat"
    t.string   "desc"
    t.string   "address"
    t.string   "city"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "manager"
    t.string   "phone"
    t.string   "branch"
    t.index ["user_id"], name: "index_lounges_on_user_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "lounge_id"
    t.integer  "bev_id"
    t.integer  "duration"
    t.integer  "quantity"
    t.string   "zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bev_id"], name: "index_orders_on_bev_id", using: :btree
    t.index ["lounge_id"], name: "index_orders_on_lounge_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "photo"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "zones", force: :cascade do |t|
    t.string   "stall"
    t.string   "seat"
    t.integer  "lounge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lounge_id"], name: "index_zones_on_lounge_id", using: :btree
  end

  add_foreign_key "bevs", "lounges"
  add_foreign_key "lounges", "users"
  add_foreign_key "orders", "bevs"
  add_foreign_key "orders", "lounges"
  add_foreign_key "orders", "users"
  add_foreign_key "zones", "lounges"
end
