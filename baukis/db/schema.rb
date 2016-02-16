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

ActiveRecord::Schema.define(version: 20160214020248) do

  create_table "administrators", force: :cascade do |t|
    t.string   "email",           limit: 255,                 null: false
    t.string   "email_for_index", limit: 255,                 null: false
    t.string   "hashed_password", limit: 255
    t.boolean  "suspended",                   default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "staff_events", force: :cascade do |t|
    t.integer  "staff_member_id", limit: 4,   null: false
    t.string   "type",            limit: 255, null: false
    t.datetime "created_at",                  null: false
  end

  add_index "staff_events", ["created_at"], name: "index_staff_events_on_created_at", using: :btree
  add_index "staff_events", ["staff_member_id", "created_at"], name: "index_staff_events_on_staff_member_id_and_created_at", using: :btree

  create_table "staff_members", force: :cascade do |t|
    t.string   "email",            limit: 255,                 null: false
    t.string   "email_for_index",  limit: 255,                 null: false
    t.string   "family_name",      limit: 255,                 null: false
    t.string   "given_name",       limit: 255,                 null: false
    t.string   "family_name_kana", limit: 255,                 null: false
    t.string   "given_name_kana",  limit: 255,                 null: false
    t.string   "hashed_password",  limit: 255
    t.date     "start_date",                                   null: false
    t.date     "end_date"
    t.boolean  "suspended",                    default: false, null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "staff_members", ["email_for_index"], name: "index_staff_members_on_email_for_index", unique: true, using: :btree

  add_foreign_key "staff_events", "staff_members", name: "staff_events_staff_member_id_fk"
end
