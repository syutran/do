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

ActiveRecord::Schema.define(:version => 20121212133127) do

  create_table "circles", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "friend"
    t.string   "friend_name"
    t.text     "discription"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.string   "title"
    t.text     "message"
    t.boolean  "valid"
    t.datetime "create_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "face_url_file_name"
    t.string   "face_url_content_type"
    t.integer  "face_url_file_size"
    t.datetime "face_url_updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end