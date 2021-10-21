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

ActiveRecord::Schema.define(version: 2021_10_21_181356) do

  create_table "islands", force: :cascade do |t|
    t.string "name"
    t.boolean "fossils"
    t.boolean "glowing_spot"
    t.boolean "able_shop"
    t.boolean "nooks_cranny"
    t.boolean "collect_fruit"
    t.boolean "shake_trees"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "villagers", force: :cascade do |t|
    t.string "name"
    t.boolean "talked_to"
    t.integer "island_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["island_id"], name: "index_villagers_on_island_id"
  end

  add_foreign_key "villagers", "islands"
end
