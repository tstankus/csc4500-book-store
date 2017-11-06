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

  create_table "books", primary_key: "book_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",     limit: 200
    t.string  "author",    limit: 50
    t.string  "category",  limit: 200
    t.decimal "pages",                 precision: 5
    t.string  "publisher", limit: 200
    t.decimal "price",                 precision: 6, scale: 2
  end

  create_table "customers", primary_key: "customer_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstName", limit: 50
    t.string "lastName",  limit: 50
    t.string "email",     limit: 50
  end

  create_table "employees", primary_key: "employee_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstName",   limit: 50
    t.string "lastName",    limit: 50
    t.date   "dateOfBirth"
    t.date   "startDate"
  end

  create_table "invoices", primary_key: "invoice_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "bookID",      null: false
    t.integer "employeeID",  null: false
    t.integer "customerID",  null: false
    t.integer "orderID",     null: false
    t.date    "invoiceDate"
  end

  create_table "orders", primary_key: "order_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "bookID",    null: false
    t.date    "orderDate"
  end

end
