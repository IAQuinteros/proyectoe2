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

ActiveRecord::Schema[8.0].define(version: 2025_05_08_031600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "comments", force: :cascade do |t|
    t.date "date_create"
    t.string "content"
    t.date "actualization_date"
    t.bigint "users_id", null: false
    t.bigint "publication_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_comments_on_publication_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "followers", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.integer "users2"
    t.date "date_followers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_followers_on_users_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.date "date_create"
    t.bigint "users_id", null: false
    t.bigint "publication_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_likes_on_publication_id"
    t.index ["users_id"], name: "index_likes_on_users_id"
  end

  create_table "publication_hashtags", force: :cascade do |t|
    t.bigint "publication_id", null: false
    t.bigint "hashtag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashtag_id"], name: "index_publication_hashtags_on_hashtag_id"
    t.index ["publication_id"], name: "index_publication_hashtags_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "publication_image"
    t.string "description"
    t.date "data_create"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_publications_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "mail"
    t.string "username"
    t.string "sex"
    t.date "date_create"
    t.string "user_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "publications"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "followers", "users", column: "users_id"
  add_foreign_key "likes", "publications"
  add_foreign_key "likes", "users", column: "users_id"
  add_foreign_key "publication_hashtags", "hashtags"
  add_foreign_key "publication_hashtags", "publications"
  add_foreign_key "publications", "users", column: "users_id"
end
