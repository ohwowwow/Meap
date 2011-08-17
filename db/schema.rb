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

ActiveRecord::Schema.define(:version => 20110817185529) do

  create_table "dailyhouses", :force => true do |t|
    t.string   "comment"
    t.string   "sheets"
    t.string   "pillowcases"
    t.string   "blanket"
    t.string   "towelbath"
    t.string   "towelface"
    t.string   "bathmats"
    t.string   "bathrugs"
    t.string   "showercurtains"
    t.string   "bedpads"
    t.string   "washcloths"
    t.string   "handtowel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "daily_roomnum"
  end

  create_table "guestmessages", :force => true do |t|
    t.integer  "users_id"
    t.string   "title"
    t.string   "guest_name"
    t.integer  "room_statuses_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_statuses", :force => true do |t|
    t.integer  "roomnum"
    t.string   "roomname"
    t.string   "roomstatus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "firstname"
    t.string   "surname"
    t.string   "nickname"
    t.string   "sex"
    t.integer  "age"
    t.string   "address"
    t.string   "email"
    t.string   "tel"
  end

end
