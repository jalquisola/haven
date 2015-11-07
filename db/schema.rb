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

ActiveRecord::Schema.define(version: 20151104130342) do

  create_table "agents", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "avatar_url",      limit: 255
    t.string   "facebook_url",    limit: 255
    t.string   "email",           limit: 255
    t.string   "twitter_url",     limit: 255
    t.string   "google_plus_url", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "linked_in_url",   limit: 255
    t.string   "skype",           limit: 255
    t.string   "whatsapp",        limit: 255
    t.string   "viber",           limit: 255
    t.string   "contact_no",      limit: 255
    t.string   "nrds",            limit: 255
  end

  create_table "amenities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "code",       limit: 255
    t.string   "icon",       limit: 255
  end

  add_index "amenities", ["code"], name: "index_amenities_on_code", using: :btree

  create_table "amenities_properties", id: false, force: :cascade do |t|
    t.integer "property_id", limit: 4
    t.integer "amenity_id",  limit: 4
  end

  add_index "amenities_properties", ["amenity_id"], name: "index_amenities_properties_on_amenity_id", using: :btree
  add_index "amenities_properties", ["property_id"], name: "index_amenities_properties_on_property_id", using: :btree

  create_table "banners", force: :cascade do |t|
    t.string   "image_url",  limit: 255
    t.string   "banner_url", limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.integer  "user_id",          limit: 4
    t.text     "content",          limit: 65535
    t.datetime "deleted_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

  create_table "descriptions", force: :cascade do |t|
    t.text     "title",       limit: 65535
    t.text     "subtitle",    limit: 65535
    t.text     "info",        limit: 65535
    t.integer  "property_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "descriptions", ["property_id"], name: "index_descriptions_on_property_id", using: :btree

  create_table "enquiries", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "salutation", limit: 255
    t.string   "name",       limit: 255
    t.string   "country",    limit: 255
    t.string   "contact_no", limit: 255
    t.string   "email",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "subject",    limit: 255
  end

  create_table "floor_plans", force: :cascade do |t|
    t.string  "name",        limit: 255
    t.string  "image_url",   limit: 255
    t.integer "property_id", limit: 4
  end

  add_index "floor_plans", ["property_id"], name: "index_floor_plans_on_property_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "url",         limit: 255
    t.integer  "position",    limit: 4
    t.integer  "property_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "images", ["property_id", "position"], name: "index_images_on_property_id_and_position", using: :btree

  create_table "properties", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "location",        limit: 255
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.string   "latitude",        limit: 255
    t.string   "longitude",       limit: 255
    t.integer  "unit_price",      limit: 4
    t.integer  "monthly_amort",   limit: 4
    t.integer  "agent_id",        limit: 4
    t.integer  "view_count",      limit: 4,                           default: 0
    t.integer  "favourite_count", limit: 4,                           default: 0
    t.integer  "comments_count",  limit: 4,                           default: 0
    t.decimal  "min_area",                    precision: 6, scale: 2
    t.decimal  "max_area",                    precision: 6, scale: 2
    t.integer  "property_type",   limit: 4
    t.integer  "status",          limit: 4
    t.integer  "turnover",        limit: 4
    t.integer  "rating",          limit: 4
    t.string   "video_url",       limit: 255
    t.string   "short_address",   limit: 255
    t.string   "slug",            limit: 255
  end

  add_index "properties", ["slug"], name: "index_properties_on_slug", unique: true, using: :btree

  create_table "testimonials", force: :cascade do |t|
    t.string "client_name",          limit: 255
    t.text   "content",              limit: 65535
    t.string "country_of_residence", limit: 255
    t.string "info",                 limit: 255
    t.string "avatar_url",           limit: 255
  end

  create_table "unit_types", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.decimal  "floor_area",                    precision: 10
    t.integer  "cost",            limit: 4
    t.integer  "amortization",    limit: 4
    t.integer  "reservation_fee", limit: 4
    t.integer  "bathrooms",       limit: 4
    t.integer  "bedrooms",        limit: 4
    t.text     "info",            limit: 65535
    t.integer  "property_id",     limit: 4
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.decimal  "floor_area_min",                precision: 6,  scale: 2
    t.decimal  "floor_area_max",                precision: 6,  scale: 2
  end

  add_index "unit_types", ["property_id"], name: "index_unit_types_on_property_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",                   limit: 255
    t.boolean  "admin",                  limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
end
