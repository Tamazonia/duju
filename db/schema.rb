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

ActiveRecord::Schema.define(version: 20180331211623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.bigint "requester_id"
    t.bigint "requestee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "invite_message"
    t.boolean "accepted"
    t.index ["requestee_id"], name: "index_contacts_on_requestee_id"
    t.index ["requester_id"], name: "index_contacts_on_requester_id"
  end

  create_table "networks", force: :cascade do |t|
    t.bigint "networker_one_id"
    t.bigint "networker_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["networker_one_id"], name: "index_networks_on_networker_one_id"
    t.index ["networker_two_id"], name: "index_networks_on_networker_two_id"
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
    t.string "first_name"
    t.string "last_name"
    t.string "organisation"
    t.string "department"
    t.string "role"
    t.string "gender"
    t.text "about"
    t.text "looking_for"
    t.string "location"
    t.string "explanation"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
