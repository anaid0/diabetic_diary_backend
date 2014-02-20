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

ActiveRecord::Schema.define(version: 20140220125010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.integer "minutes"
    t.integer "activity_type_id"
    t.integer "entry_id"
  end

  create_table "activity_types", force: true do |t|
    t.string  "name"
    t.integer "kcal_per_hour"
    t.integer "user_id"
  end

  create_table "doses", force: true do |t|
    t.decimal "value"
    t.integer "insulin_type_id"
    t.integer "entry_id"
  end

  create_table "entries", force: true do |t|
    t.datetime "dt"
    t.integer  "user_id"
  end

  create_table "insulin_types", force: true do |t|
    t.string  "name"
    t.string  "acting"
    t.string  "type"
    t.integer "user_id"
  end

  create_table "meals", force: true do |t|
    t.integer "carbs"
    t.integer "kcal"
    t.integer "entry_id"
  end

  create_table "measurement_types", force: true do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "measurements", force: true do |t|
    t.integer "value"
    t.integer "measurement_type_id"
    t.integer "entry_id"
  end

  create_table "notes", force: true do |t|
    t.text    "content"
    t.integer "entry_id"
  end

  create_table "users", force: true do |t|
    t.string "name"
  end

end
