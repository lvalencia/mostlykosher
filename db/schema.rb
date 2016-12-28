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

ActiveRecord::Schema.define(version: 20161228231441) do

  create_table "accounts", force: :cascade do |t|
    t.string   "email",              limit: 255
    t.string   "name",               limit: 255
    t.string   "encrypted_password", limit: 255
    t.string   "salt",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.string   "title",        limit: 255
    t.text     "description"
    t.string   "link",         limit: 255
    t.string   "location",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
  end

  create_table "fans", force: :cascade do |t|
    t.string   "email",        limit: 255
    t.string   "address",      limit: 255
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "phone",        limit: 255
    t.string   "organization", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "feed",               limit: 255
    t.string   "title",              limit: 255
    t.string   "content",            limit: 255
    t.datetime "posted_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "pin"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "quote",      limit: 255
    t.string   "entity",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.integer  "ordering"
  end

end
