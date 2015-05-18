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

ActiveRecord::Schema.define(version: 20150517193225) do

  create_table "activities", force: :cascade do |t|
    t.integer  "k_indactivities_id"
    t.integer  "user_id"
    t.integer  "level"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status_of_implementation_id"
    t.string   "succinctly"
    t.text     "description"
    t.text     "report"
    t.float    "time_word"
    t.string   "status"
    t.float    "runtime"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "categoris", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "email"
    t.string   "adress"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grafs", force: :cascade do |t|
    t.datetime "date_start"
    t.datetime "date_end"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "k_indactivities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_order"
    t.string   "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "info"
    t.float    "price"
  end

  create_table "prices", force: :cascade do |t|
    t.float    "value"
    t.datetime "data_price"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "categori_id"
  end

  create_table "status_of_implementations", force: :cascade do |t|
    t.integer  "order_id"
    t.datetime "date_status"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "table_service_orders", force: :cascade do |t|
    t.string   "order_id"
    t.string   "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "role",            default: "Developer"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
