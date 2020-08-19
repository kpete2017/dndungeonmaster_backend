# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_19_003117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allies", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "npc_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["npc_id"], name: "index_allies_on_npc_id"
    t.index ["player_id"], name: "index_allies_on_player_id"
    t.index ["user_id"], name: "index_allies_on_user_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.string "meta"
    t.string "armor_class"
    t.string "hit_points"
    t.string "Speed"
    t.string "STR"
    t.string "STR_mod"
    t.string "DEX"
    t.string "DEX_mod"
    t.string "CON"
    t.string "CON_mod"
    t.string "INT"
    t.string "INT_mod"
    t.string "WIS"
    t.string "WIS_mod"
    t.string "CHA"
    t.string "CHA_mod"
    t.string "Saving_Throws"
    t.string "Skills"
    t.string "Senses"
    t.string "Languages"
    t.string "level"
    t.string "Traits"
    t.string "Actions"
    t.string "Legendary_Actions"
    t.string "image_url"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_enemies_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "message"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "subtitle"
    t.string "race"
    t.string "characterClass"
    t.string "level"
    t.string "strength"
    t.string "dexterity"
    t.string "constitution"
    t.string "intelligence"
    t.string "wisdom"
    t.string "charisma"
    t.string "initiative"
    t.string "armor_class"
    t.string "passive_perception"
    t.string "hit_points"
    t.string "proficiency_bonus"
    t.string "speed"
    t.string "player_name"
    t.string "image_url"
    t.string "actions"
    t.string "equipment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_npcs_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "subtitle"
    t.string "race"
    t.string "characterClass"
    t.string "level"
    t.string "strength"
    t.string "dexterity"
    t.string "constitution"
    t.string "intelligence"
    t.string "wisdom"
    t.string "charisma"
    t.string "initiative"
    t.string "armor_class"
    t.string "passive_perception"
    t.string "hit_points"
    t.string "proficiency_bonus"
    t.string "speed"
    t.string "player_name"
    t.string "image_url"
    t.string "actions"
    t.string "equipment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "plane"
    t.string "continent"
    t.string "area"
    t.string "climate"
    t.string "terrain"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_regions_on_user_id"
  end

  create_table "rotations", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rotations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_digest"
    t.integer "permission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "allies", "npcs"
  add_foreign_key "allies", "players"
  add_foreign_key "allies", "users"
  add_foreign_key "enemies", "users"
  add_foreign_key "notes", "users"
  add_foreign_key "npcs", "users"
  add_foreign_key "players", "users"
  add_foreign_key "regions", "users"
  add_foreign_key "rotations", "users"
end
