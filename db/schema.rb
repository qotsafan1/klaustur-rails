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

ActiveRecord::Schema.define(version: 20170104185727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competitors", force: :cascade do |t|
    t.integer "group_id"
    t.string  "name"
    t.integer "laps"
    t.time    "total_time"
    t.time    "finish_time"
    t.integer "place_in_group"
    t.integer "year"
    t.index ["group_id"], name: "index_competitors_on_group_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "laptimes", force: :cascade do |t|
    t.integer "competitor_id"
    t.integer "lap_number"
    t.text    "laptime"
    t.index ["competitor_id"], name: "index_laptimes_on_competitor_id", using: :btree
  end

  add_foreign_key "competitors", "groups"
  add_foreign_key "laptimes", "competitors"
end
