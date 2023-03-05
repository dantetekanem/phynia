# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_14_222425) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "class"
    t.string "status"
    t.integer "max_hp"
    t.integer "hp"
    t.integer "max_mp"
    t.integer "mp"
    t.integer "gauge"
    t.integer "xp"
    t.integer "next_level_xp"
    t.integer "level"
    t.integer "str"
    t.integer "dex"
    t.integer "res"
    t.integer "mag"
    t.integer "equip_load"
    t.integer "equip_weapon_id"
    t.integer "equip_armor_id"
    t.integer "equip_accessory_1_id"
    t.integer "equip_accessory_2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
