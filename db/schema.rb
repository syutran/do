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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130129070509) do

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "circle_id"
    t.string   "typies"
    t.integer  "timelimit"
    t.datetime "validate"
    t.datetime "invalidate"
    t.text     "discription"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "homework"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.integer  "parent_id"
    t.string   "tags"
    t.integer  "user_id"
    t.text     "discription"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "circles", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "friend_id"
    t.string   "friend_name"
    t.text     "discription"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "depots", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "typies"
    t.text     "title"
    t.text     "item_a"
    t.text     "item_b"
    t.text     "item_c"
    t.text     "item_d"
    t.text     "item_e"
    t.text     "item_f"
    t.text     "item_g"
    t.text     "item_h"
    t.text     "item_i"
    t.text     "item_j"
    t.string   "keys"
    t.integer  "need_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "readspeed"
  end

  create_table "homeworks", :force => true do |t|
    t.integer  "sort"
    t.integer  "depot_id"
    t.integer  "assignment_id"
    t.integer  "user_id"
    t.string   "typies"
    t.text     "title"
    t.text     "item_a"
    t.text     "item_b"
    t.text     "item_c"
    t.text     "item_d"
    t.text     "item_e"
    t.text     "item_f"
    t.text     "item_g"
    t.text     "item_h"
    t.text     "item_i"
    t.text     "item_j"
    t.string   "keys"
    t.string   "answer"
    t.integer  "need_time"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.string   "title"
    t.text     "message"
    t.boolean  "act"
    t.datetime "create_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "typies"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "face_url"
    t.string   "address"
    t.string   "cellphone"
    t.string   "telephone"
    t.string   "industry"
    t.date     "birth"
    t.text     "discription"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "active_code"
    t.boolean  "act"
  end

end
