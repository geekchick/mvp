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

ActiveRecord::Schema.define(:version => 20120314014147) do

  create_table "basketballs", :force => true do |t|
    t.string   "ppg"
    t.string   "rpg"
    t.string   "apg"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "micropost_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["micropost_id", "created_at"], :name => "index_comments_on_micropost_id_and_created_at"
  add_index "comments", ["user_id", "created_at"], :name => "index_comments_on_user_id_and_created_at"

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "country"
    t.string   "gender"
    t.string   "bio"
    t.date     "birthdate"
    t.string   "role"
    t.string   "current_team"
    t.string   "current_level"
    t.string   "former_team"
    t.string   "former_level"
    t.string   "sport"
    t.float    "ppg"
    t.float    "rpg"
    t.float    "apg"
    t.float    "spg"
    t.float    "bpg"
    t.string   "season"
    t.string   "team"
    t.float    "games_played"
    t.float    "minutes_per_game"
    t.float    "field_goal_made"
    t.float    "field_goal_attempt"
    t.float    "three_point_made"
    t.float    "three_point_attempt"
    t.float    "free_throw_made"
    t.float    "free_throw_attempt"
    t.string   "height"
    t.float    "weight"
    t.string   "position"
    t.string   "video_title"
    t.string   "video_url_1"
    t.string   "video_url_2"
    t.string   "video_url_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
