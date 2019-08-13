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

ActiveRecord::Schema.define(version: 2019_08_10_100101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "salons", force: :cascade do |t|
    t.string "shop_name"
    t.string "nav_logo"
    t.string "top_catch"
    t.string "logo"
    t.string "youtube_id"
    t.string "concept1_title"
    t.string "concept1_image"
    t.text "concept1"
    t.string "concept2_title"
    t.string "concept2_image"
    t.text "concept2"
    t.string "concept3_title"
    t.string "concept3_image"
    t.text "concept3"
    t.string "store_photo"
    t.string "address"
    t.string "tel"
    t.string "tel_sp"
    t.text "hour"
    t.text "access"
    t.boolean "card"
    t.text "map"
    t.string "reserve"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "hotpepper"
    t.string "youtube"
    t.string "blog"
    t.string "site"
    t.string "recruit"
    t.string "copy"
    t.string "footer_logo"
    t.string "link_color"
    t.string "bgcolor_2"
    t.string "concept_color"
    t.string "reserve_btn_bg"
    t.string "reserve_btn_txt"
    t.string "data_bgcolor"
    t.string "data_color"
    t.string "sp_fix_btn"
    t.text "retargeting"
    t.text "gtm_head"
    t.text "gtm_body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_salons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "salons", "users"
end
