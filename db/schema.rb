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

ActiveRecord::Schema.define(version: 20150307201451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "time_data", force: :cascade do |t|
    t.decimal  "clock_in"
    t.decimal  "break"
    t.decimal  "clock_out"
    t.decimal  "overtime"
    t.decimal  "weekly_overtime_total"
    t.decimal  "yearly_overtime_total"
    t.string   "note"
    t.decimal  "weekly_total"
    t.decimal  "year_to_date_total"
    t.decimal  "adverage_total"
    t.decimal  "vacation_total"
    t.decimal  "vacation_used_total"
    t.decimal  "vacation_left_total"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
