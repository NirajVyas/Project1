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

ActiveRecord::Schema.define(:version => 20140430170735) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "city"
    t.string   "genre"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "profile_picture"
    t.string   "email"
    t.string   "password_digest"
    t.string   "show"
    t.string   "show2"
    t.string   "show3"
    t.string   "show4"
    t.string   "show5"
    t.string   "background"
  end

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "artist_id"
    t.integer  "song_id"
  end

  create_table "galleries", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "artist_id"
    t.string   "filename"
  end

end
