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

ActiveRecord::Schema.define(version: 20160504094754) do

  create_table "area_groups", force: :cascade do |t|
    t.integer  "prefecture_id",                           null: false
    t.string   "name",            limit: 100,             null: false
    t.integer  "order",                       default: 0, null: false
    t.string   "prefecture_name", limit: 10,              null: false
    t.string   "area_code",       limit: 2,               null: false
    t.string   "area_name",       limit: 20,              null: false
    t.integer  "status_id",       limit: 1,   default: 0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "area_groups", ["area_code"], name: "index_area_groups_on_area_code"
  add_index "area_groups", ["order"], name: "index_area_groups_on_order"
  add_index "area_groups", ["prefecture_id"], name: "index_area_groups_on_prefecture_id"
  add_index "area_groups", ["status_id"], name: "index_area_groups_on_status_id"

  create_table "area_originals", force: :cascade do |t|
    t.string  "city_code",            limit: 5,                   null: false
    t.string  "old_post_code",        limit: 5
    t.string  "post_code",            limit: 7,                   null: false
    t.string  "prefecture_name_kana", limit: 20
    t.string  "city_name_kana",       limit: 100
    t.string  "town_name_kana",       limit: 500
    t.string  "prefecture_name",      limit: 10,                  null: false
    t.string  "city_name",            limit: 50,                  null: false
    t.string  "town_name",            limit: 250
    t.boolean "multi_town_flag",                  default: false, null: false
    t.boolean "address_flag",                     default: false, null: false
    t.boolean "chome_flag",                       default: false, null: false
    t.boolean "multi_post_flag",                  default: false, null: false
    t.integer "update_status",        limit: 1,   default: 0,     null: false
    t.integer "reason_status",        limit: 1,   default: 0,     null: false
  end

  add_index "area_originals", ["address_flag"], name: "index_area_originals_on_address_flag"
  add_index "area_originals", ["chome_flag"], name: "index_area_originals_on_chome_flag"
  add_index "area_originals", ["multi_post_flag"], name: "index_area_originals_on_multi_post_flag"
  add_index "area_originals", ["multi_town_flag"], name: "index_area_originals_on_multi_town_flag"
  add_index "area_originals", ["reason_status"], name: "index_area_originals_on_reason_status"
  add_index "area_originals", ["update_status"], name: "index_area_originals_on_update_status"

  create_table "cities", force: :cascade do |t|
    t.integer  "prefecture_id",                               null: false
    t.string   "code",            limit: 5,                   null: false
    t.string   "name",            limit: 50,                  null: false
    t.string   "name_kana",       limit: 100
    t.integer  "order",                       default: 0,     null: false
    t.string   "prefecture_name", limit: 10,                  null: false
    t.string   "area_code",       limit: 2,                   null: false
    t.string   "area_name",       limit: 20,                  null: false
    t.integer  "status_id",       limit: 1,   default: 0,     null: false
    t.boolean  "show_flag",                   default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "cities", ["area_code"], name: "index_cities_on_area_code"
  add_index "cities", ["code"], name: "index_cities_on_code"
  add_index "cities", ["order"], name: "index_cities_on_order"
  add_index "cities", ["prefecture_id"], name: "index_cities_on_prefecture_id"
  add_index "cities", ["show_flag"], name: "index_cities_on_show_flag"
  add_index "cities", ["status_id"], name: "index_cities_on_status_id"

  create_table "city_area_groups", force: :cascade do |t|
    t.integer "city_id",       null: false
    t.integer "area_group_id", null: false
  end

  add_index "city_area_groups", ["area_group_id"], name: "index_city_area_groups_on_area_group_id"
  add_index "city_area_groups", ["city_id"], name: "index_city_area_groups_on_city_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "prefecture_id",                               null: false
    t.integer  "city_id",                                     null: false
    t.string   "code",            limit: 7,                   null: false
    t.string   "name",            limit: 250,                 null: false
    t.string   "name_kana",       limit: 500
    t.integer  "order",                       default: 0,     null: false
    t.boolean  "multi_town_flag",             default: false, null: false
    t.boolean  "multi_post_flag",             default: false, null: false
    t.string   "city_name",       limit: 50,                  null: false
    t.string   "prefecture_name", limit: 10,                  null: false
    t.string   "area_code",       limit: 2,                   null: false
    t.string   "area_name",       limit: 20,                  null: false
    t.integer  "status_id",       limit: 1,   default: 0,     null: false
    t.boolean  "show_flag",                   default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "posts", ["area_code"], name: "index_posts_on_area_code"
  add_index "posts", ["city_id"], name: "index_posts_on_city_id"
  add_index "posts", ["code"], name: "index_posts_on_code"
  add_index "posts", ["multi_post_flag"], name: "index_posts_on_multi_post_flag"
  add_index "posts", ["multi_town_flag"], name: "index_posts_on_multi_town_flag"
  add_index "posts", ["order"], name: "index_posts_on_order"
  add_index "posts", ["prefecture_id"], name: "index_posts_on_prefecture_id"
  add_index "posts", ["show_flag"], name: "index_posts_on_show_flag"
  add_index "posts", ["status_id"], name: "index_posts_on_status_id"

  create_table "prefectures", force: :cascade do |t|
    t.string  "code",       limit: 2,              null: false
    t.string  "name",       limit: 10,             null: false
    t.string  "name_kana",  limit: 20,             null: false
    t.string  "area_code",  limit: 2,              null: false
    t.string  "area_name",  limit: 20,             null: false
    t.integer "area_order",            default: 0, null: false
  end

  add_index "prefectures", ["area_code"], name: "index_prefectures_on_area_code"
  add_index "prefectures", ["area_order"], name: "index_prefectures_on_area_order"
  add_index "prefectures", ["code"], name: "index_prefectures_on_code"

end
