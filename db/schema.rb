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

ActiveRecord::Schema.define(version: 20180323051941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "month", default: "", null: false
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
  end

  create_table "attached_pdfs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pdf_file_name"
    t.string "pdf_content_type"
    t.integer "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string "owner_type"
    t.bigint "owner_id"
    t.index ["owner_type", "owner_id"], name: "index_attached_pdfs_on_owner_type_and_owner_id"
  end

  create_table "connects", force: :cascade do |t|
    t.string "month"
    t.string "year"
    t.boolean "early"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_stories", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.date "air_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "embed_url"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_news_stories_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shared_stories", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "synopsis"
    t.text "body"
    t.boolean "approved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone", default: ""
    t.string "email", default: ""
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "news_stories", "users"
end
