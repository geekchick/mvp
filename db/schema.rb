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

ActiveRecord::Schema.define(:version => 20120225093628) do

  create_table "identities", :primary_key => "identity_id", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "country"
    t.string   "sport"
    t.string   "height"
    t.string   "weight"
    t.string   "vid_url"
    t.string   "profile_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :primary_key => "player_id", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "country"
    t.string   "sport"
    t.string   "height"
    t.string   "weight"
    t.string   "vid_url"
    t.string   "profile_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :primary_key => "profile_id", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "country"
    t.string   "sport"
    t.string   "height"
    t.string   "weight"
    t.string   "vid_url"
    t.string   "profile_image"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :primary_key => "user_id", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
