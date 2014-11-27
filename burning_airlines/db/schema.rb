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

ActiveRecord::Schema.define(version: 20141127023337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeroplanes", force: true do |t|
    t.integer  "cols"
    t.integer  "rows"
    t.string   "name"
    t.string   "spare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: true do |t|
    t.integer  "plane_id"
    t.string   "flight_no"
    t.string   "origin"
    t.string   "destination"
    t.datetime "dep_date"
    t.datetime "arr_date"
    t.string   "spare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "user_id"
    t.integer  "seat_id"
    t.string   "spare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seats", force: true do |t|
    t.integer  "user_id"
    t.integer  "reservation_id"
    t.integer  "flight_id"
    t.integer  "pos_x"
    t.string   "pos_y"
    t.boolean  "availability"
    t.string   "spare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
