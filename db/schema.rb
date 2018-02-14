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

ActiveRecord::Schema.define(version: 20180214085602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.text     "street"
    t.text     "city"
    t.text     "zipcode"
    t.text     "district"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "wechat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.text     "name"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_categories", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "category_photo"
    t.integer  "menu_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "menu_subcategory_id"
    t.index ["menu_id"], name: "index_menu_categories_on_menu_id", using: :btree
    t.index ["menu_subcategory_id"], name: "index_menu_categories_on_menu_subcategory_id", using: :btree
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "menu_subcategory_id"
    t.integer  "menu_category_id"
    t.integer  "menu_id"
    t.string   "can_combo"
    t.string   "in_stock"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["menu_category_id"], name: "index_menu_items_on_menu_category_id", using: :btree
    t.index ["menu_id"], name: "index_menu_items_on_menu_id", using: :btree
    t.index ["menu_subcategory_id"], name: "index_menu_items_on_menu_subcategory_id", using: :btree
  end

  create_table "menu_subcategories", force: :cascade do |t|
    t.text     "name"
    t.integer  "menu_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "menu_category_id"
    t.index ["menu_category_id"], name: "index_menu_subcategories_on_menu_category_id", using: :btree
    t.index ["menu_id"], name: "index_menu_subcategories_on_menu_id", using: :btree
  end

  create_table "menus", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "timeAvailable"
    t.datetime "timeExpire"
    t.string   "daysAvailable"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "menu_category_id"
    t.integer  "menu_subcategory_id"
    t.index ["menu_category_id"], name: "index_menus_on_menu_category_id", using: :btree
    t.index ["menu_subcategory_id"], name: "index_menus_on_menu_subcategory_id", using: :btree
    t.index ["user_id"], name: "index_menus_on_user_id", using: :btree
  end

  create_table "order_payments", force: :cascade do |t|
    t.integer  "total"
    t.integer  "fees"
    t.integer  "payment_status_id"
    t.integer  "payment_method_id"
    t.datetime "time_paid"
    t.integer  "discount_id"
    t.integer  "delivery_fee"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["discount_id"], name: "index_order_payments_on_discount_id", using: :btree
    t.index ["payment_method_id"], name: "index_order_payments_on_payment_method_id", using: :btree
    t.index ["payment_status_id"], name: "index_order_payments_on_payment_status_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.text     "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordered_items", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.text     "is_combo"
    t.string   "combo_side"
    t.string   "combo_drink"
    t.integer  "quantity"
    t.integer  "subtotal"
    t.integer  "order_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["menu_item_id"], name: "index_ordered_items_on_menu_item_id", using: :btree
    t.index ["order_id"], name: "index_ordered_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "order_payment_id"
    t.integer  "customer_id"
    t.datetime "ordered_time"
    t.datetime "delivered_time"
    t.text     "order_comments"
    t.integer  "order_status_id"
    t.integer  "address_id"
    t.integer  "phone_number_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["address_id"], name: "index_orders_on_address_id", using: :btree
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["order_payment_id"], name: "index_orders_on_order_payment_id", using: :btree
    t.index ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
    t.index ["phone_number_id"], name: "index_orders_on_phone_number_id", using: :btree
  end

  create_table "payment_methods", force: :cascade do |t|
    t.text     "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_statuses", force: :cascade do |t|
    t.text     "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "phone_number"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["customer_id"], name: "index_phone_numbers_on_customer_id", using: :btree
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "menu_item_id"
    t.integer  "price_jr"
    t.integer  "price_regular"
    t.integer  "price_combo"
    t.integer  "price_combo_XL"
    t.integer  "price_special"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["menu_item_id"], name: "index_prices_on_menu_item_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "password"
    t.text     "permissions"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "menu_categories", "menu_subcategories"
  add_foreign_key "menu_categories", "menus"
  add_foreign_key "menu_items", "menu_categories"
  add_foreign_key "menu_items", "menu_subcategories"
  add_foreign_key "menu_items", "menus"
  add_foreign_key "menu_subcategories", "menu_categories"
  add_foreign_key "menu_subcategories", "menus"
  add_foreign_key "menus", "menu_categories"
  add_foreign_key "menus", "menu_subcategories"
  add_foreign_key "menus", "users"
  add_foreign_key "order_payments", "discounts"
  add_foreign_key "order_payments", "payment_methods"
  add_foreign_key "order_payments", "payment_statuses"
  add_foreign_key "ordered_items", "menu_items"
  add_foreign_key "ordered_items", "orders"
  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "order_payments"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "phone_numbers"
  add_foreign_key "phone_numbers", "customers"
  add_foreign_key "prices", "menu_items"
end
