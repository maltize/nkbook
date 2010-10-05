# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101004213055) do

  create_table "feedbacks", :force => true do |t|
    t.string   "username"
    t.text     "message"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "login"
    t.string   "nk_id"
    t.string   "url"
    t.string   "email"
    t.boolean  "tos"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spots", :force => true do |t|
    t.integer  "profile_id"
    t.integer  "duration"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end