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

ActiveRecord::Schema.define(version: 20130904010912) do

  create_table "articles", force: true do |t|
    t.integer  "user_id"
    t.string   "title",          default: "Title"
    t.text     "body",           default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "keywords"
    t.boolean  "allow_comments", default: true
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "copyright"
    t.integer  "CCLI"
    t.string   "scripture"
    t.string   "keywords"
  end

  create_table "users", force: true do |t|
    t.string "login"
    t.string "password"
    t.string "name"
    t.string "email"
    t.string "type",     default: "Visitor"
  end

end