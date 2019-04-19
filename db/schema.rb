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

ActiveRecord::Schema.define(version: 2019_04_19_122927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address1"
    t.string "area"
    t.string "city"
    t.string "state"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pincode"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "advertisements", force: :cascade do |t|
    t.string "image"
    t.date "start_date"
    t.date "end_date"
    t.boolean "visible_right_side"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "qty"
    t.integer "tot_amt"
    t.bigint "user_id"
    t.bigint "product_size_color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_size_color_id"], name: "index_carts_on_product_size_color_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.date "valid_from"
    t.date "valid_to"
    t.integer "min_amt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amt_discount"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_received_date"
    t.bigint "user_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_size_color_id"
    t.integer "qty"
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["product_size_color_id"], name: "index_orders_on_product_size_color_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_size_colors", force: :cascade do |t|
    t.boolean "available_stock"
    t.bigint "product_id"
    t.bigint "product_color_id"
    t.bigint "product_size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_color_id"], name: "index_product_size_colors_on_product_color_id"
    t.index ["product_id"], name: "index_product_size_colors_on_product_id"
    t.index ["product_size_id"], name: "index_product_size_colors_on_product_size_id"
  end

  create_table "product_sizes", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "images"
    t.string "price"
    t.text "description"
    t.bigint "user_id"
    t.bigint "sub_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_category_id"], name: "index_products_on_sub_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "seller_name"
    t.string "address"
    t.string "gst_no"
    t.string "seller_type"
    t.integer "delivery_charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "user_role"
    t.string "seller_name"
    t.string "address"
    t.string "gst_no"
    t.string "seller_type"
    t.integer "delivery_charge"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "users"
  add_foreign_key "advertisements", "users"
  add_foreign_key "carts", "product_size_colors"
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "product_size_colors"
  add_foreign_key "orders", "users"
  add_foreign_key "product_size_colors", "product_colors"
  add_foreign_key "product_size_colors", "product_sizes"
  add_foreign_key "product_size_colors", "products"
  add_foreign_key "products", "sub_categories"
  add_foreign_key "products", "users"
  add_foreign_key "sub_categories", "categories"
end
