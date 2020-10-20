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

ActiveRecord::Schema.define(version: 2020_10_20_205242) do

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "category"
    t.integer "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_equipment_on_studio_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "category"
    t.string "inst_type"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_instruments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studio_sessions", force: :cascade do |t|
    t.datetime "session_time"
    t.integer "duration"
    t.string "special_req"
    t.integer "cost"
    t.integer "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_studio_sessions_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "hourly_rate"
    t.string "features"
    t.string "description"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "studio_manager_id"
  end

  create_table "user_genres", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_user_genres_on_genre_id"
    t.index ["user_id"], name: "index_user_genres_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "studio_session_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_session_id"], name: "index_user_sessions_on_studio_session_id"
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "location"
    t.string "bio"
    t.boolean "can_travel"
    t.string "picture"
    t.string "stage_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_confirmation"
  end

  add_foreign_key "equipment", "studios"
  add_foreign_key "instruments", "users"
  add_foreign_key "studio_sessions", "studios"
  add_foreign_key "user_genres", "genres"
  add_foreign_key "user_genres", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "user_sessions", "studio_sessions"
  add_foreign_key "user_sessions", "users"
end
