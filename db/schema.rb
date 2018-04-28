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

ActiveRecord::Schema.define(version: 20180428122948) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "life_score"
    t.integer  "attack_score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "picture"
  end

  create_table "fights", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "first_character_id"
    t.integer  "second_character_id"
    t.integer  "winner_id"
  end

  add_index "fights", ["winner_id"], name: "index_fights_on_winner_id"

end
