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

ActiveRecord::Schema[7.0].define(version: 2022_03_22_080119) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.string "user"
    t.integer "stars"
    t.string "review"
    t.bigint "tv_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_id"], name: "index_reviews_on_tv_id"
  end

  create_table "tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tvseries", force: :cascade do |t|
    t.string "genre"
    t.integer "no_of_seosons"
    t.string "date_of_first_release"
    t.string "director"
    t.string "actor"
    t.string "shoot_location"
    t.string "country"
    t.bigint "tv_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_id"], name: "index_tvseries_on_tv_id"
  end

  add_foreign_key "reviews", "tvs"
  add_foreign_key "tvseries", "tvs"
end
