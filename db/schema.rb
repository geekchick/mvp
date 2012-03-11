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

ActiveRecord::Schema.define(:version => 20120311215933) do

  create_table "baseball_profiles", :force => true do |t|
    t.string   "hits"
    t.string   "runs"
    t.string   "homeruns"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "basketball_profiles", :force => true do |t|
    t.string   "ppg"
    t.string   "rpg"
    t.string   "apg"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "basketballs", :force => true do |t|
    t.string   "ppg"
    t.string   "rpg"
    t.string   "apg"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "reply"
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "profiles", :force => true do |t|
    t.date     "birthdate"
    t.string   "title"
    t.string   "sport"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.date     "birthdate"
    t.string   "role"
    t.string   "sport"
    t.string   "ppg"
    t.string   "rpg"
    t.string   "apg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
