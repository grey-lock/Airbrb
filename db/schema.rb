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

ActiveRecord::Schema.define(version: 20180417171144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "listing_id", null: false
    t.datetime "check_in", null: false
    t.datetime "check_out", null: false
    t.string "status", default: "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_bookings_on_listing_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.integer "host_id", null: false
    t.integer "booking_id"
    t.string "title", null: false
    t.text "description", null: false
    t.text "address", null: false
    t.float "lat"
    t.float "lng"
    t.integer "price", null: false
    t.string "prop_type", null: false
    t.string "room_type", null: false
    t.integer "num_guests", null: false
    t.integer "bedrooms", null: false
    t.integer "beds", null: false
    t.text "rules"
    t.string "img_url"
    t.boolean "wifi", default: false
    t.boolean "kitchen", default: false
    t.boolean "ac", default: false
    t.boolean "tv", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes"
    t.index ["host_id"], name: "index_listings_on_host_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "listing_id", null: false
    t.integer "rating", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_reviews_on_listing_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["username"], name: "index_users_on_username"
  end

end
