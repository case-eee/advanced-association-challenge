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

ActiveRecord::Schema.define(version: 20160721172830) do

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "year"
    t.integer  "length"
    t.string   "rating"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "films", ["category_id"], name: "index_films_on_category_id"

  create_table "films_performers", id: false, force: :cascade do |t|
    t.integer "film_id",      null: false
    t.integer "performer_id", null: false
  end

  add_index "films_performers", ["film_id", "performer_id"], name: "index_films_performers_on_film_id_and_performer_id"
  add_index "films_performers", ["performer_id", "film_id"], name: "index_films_performers_on_performer_id_and_film_id"

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "performer_id"
  end

  add_index "images", ["performer_id"], name: "index_images_on_performer_id"

  create_table "performers", force: :cascade do |t|
    t.string   "name"
    t.text     "biography"
    t.string   "height"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["author_id"], name: "index_reviews_on_author_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "age"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "value"
    t.integer  "voter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "votes", ["voter_id"], name: "index_votes_on_voter_id"

end
