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

ActiveRecord::Schema.define(version: 20171013014215) do
create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",     limit: 200
    t.string  "author",    limit: 50
    t.string  "category",  limit: 200
    t.decimal "pages",                 precision: 5
    t.string  "publisher", limit: 200
    t.decimal "price",                 precision: 6, scale: 2
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date    "orderDate"
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "book_id",    null: false
    t.integer "order_id", null: false
    t.integer "bookQuantity"
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["book_id"], name: "index_order_items_on_book_id", using: :btree
  end

  create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.boolean "isAdmin", :default => 0
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.integer "order_id",     null: false
    t.date    "invoiceDate"
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
    t.index ["order_id"], name: "index_invoices_on_order_id", using: :btree
  end
  begin
	add_foreign_key :invoices, :orders
  add_foreign_key :invoices, :users
	add_foreign_key :order_items, :orders
	add_foreign_key :order_items, :books
  end
end
