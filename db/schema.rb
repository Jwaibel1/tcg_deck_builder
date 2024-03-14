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

ActiveRecord::Schema[7.1].define(version: 2024_03_12_011208) do
  create_table "cards", force: :cascade do |t|
    t.integer "card_id", null: false
    t.string "card_name"
    t.string "card_image"
    t.string "card_type"
    t.string "card_typing"
    t.string "card_subtype"
    t.string "card_attribute"
    t.integer "card_rank"
    t.integer "card_atk"
    t.integer "card_def"
    t.string "card_effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deck_lists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "deck_id", null: false
    t.string "deck_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deck_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deck_lists", "users"
end
