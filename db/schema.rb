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

ActiveRecord::Schema.define(version: 20180201213641) do

  create_table "klasas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "specialatk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postacs", force: :cascade do |t|
    t.string "name"
    t.integer "lvl"
    t.integer "maglvl"
    t.integer "atk"
    t.integer "def"
    t.integer "magic"
    t.integer "speed"
    t.integer "klasa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["klasa_id"], name: "index_postacs_on_klasa_id"
  end

end
