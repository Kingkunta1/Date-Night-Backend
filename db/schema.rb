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

ActiveRecord::Schema.define(version: 2019_07_22_212952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rendezvous", force: :cascade do |t|
    t.datetime "date"
    t.string "location"
    t.integer "user_id"
    t.integer "attire_id"
    t.integer "rendezvous_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "babysitter"
    t.datetime "time"
  end

  create_table "rendezvous_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "significant_others", force: :cascade do |t|
    t.integer "follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "followee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "phone_number"
    t.string "email"
    t.string "significant_other_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
