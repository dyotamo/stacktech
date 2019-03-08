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

ActiveRecord::Schema.define(version: 2019_03_08_132040) do

  create_table "business_tool_users", force: :cascade do |t|
    t.integer "business_tool_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_tool_id"], name: "index_business_tool_users_on_business_tool_id"
    t.index ["user_id"], name: "index_business_tool_users_on_user_id"
  end

  create_table "business_tools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_tools_users", force: :cascade do |t|
    t.integer "business_tool_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details"
    t.index ["business_tool_id"], name: "index_business_tools_users_on_business_tool_id"
    t.index ["user_id"], name: "index_business_tools_users_on_user_id"
  end

  create_table "devop_users", force: :cascade do |t|
    t.integer "devop_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["devop_id"], name: "index_devop_users_on_devop_id"
    t.index ["user_id"], name: "index_devop_users_on_user_id"
  end

  create_table "devops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devops_users", force: :cascade do |t|
    t.integer "devop_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details"
    t.index ["devop_id"], name: "index_devops_users_on_devop_id"
    t.index ["user_id"], name: "index_devops_users_on_user_id"
  end

  create_table "programming_language_users", force: :cascade do |t|
    t.integer "programming_language_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["programming_language_id"], name: "index_programming_language_users_on_programming_language_id"
    t.index ["user_id"], name: "index_programming_language_users_on_user_id"
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programming_languages_users", force: :cascade do |t|
    t.integer "programming_language_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details"
    t.index ["programming_language_id"], name: "index_programming_languages_users_on_programming_language_id"
    t.index ["user_id", "programming_language_id"], name: "index_programming_languages_user_unique_key", unique: true
    t.index ["user_id"], name: "index_programming_languages_users_on_user_id"
  end

  create_table "user_utilities", force: :cascade do |t|
    t.integer "utility_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_utilities_on_user_id"
    t.index ["utility_id"], name: "index_user_utilities_on_utility_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
    t.string "email", default: "", null: false
    t.text "about", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_utilities", force: :cascade do |t|
    t.integer "user_id"
    t.integer "utility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details"
    t.index ["user_id"], name: "index_users_utilities_on_user_id"
    t.index ["utility_id"], name: "index_users_utilities_on_utility_id"
  end

  create_table "utilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
