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


ActiveRecord::Schema.define(version: 20160422051206) do
  create_table "articles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tag_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "body"
    t.boolean  "status"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "type"
  end

  add_index "articles", ["tag_id"], name: "index_articles_on_tag_id"
  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_rankings", force: :cascade do |t|
    t.integer  "ranking_id"
    t.integer  "user_id"
    t.integer  "points"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_rankings", ["ranking_id"], name: "index_user_rankings_on_ranking_id"
  add_index "user_rankings", ["user_id"], name: "index_user_rankings_on_user_id"


  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date_event"
    t.time     "hour_start"
    t.time     "hour_finish"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tag_id"
    t.integer  "type_event"
  end

  add_index "events", ["tag_id"], name: "index_events_on_tag_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"


  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
    t.integer  "telephone"
    t.string   "address"
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
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.integer  "role"
    t.text     "aboutme"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
