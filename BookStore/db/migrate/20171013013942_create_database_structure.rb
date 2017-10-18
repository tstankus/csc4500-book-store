class CreateDatabaseStructure < ActiveRecord::Migration[5.0]
  def up
 create_table "books", primary_key: "bookID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",     limit: 200
    t.string  "author",    limit: 50
    t.string  "category",  limit: 200
    t.decimal "pages",                 precision: 5
    t.string  "publisher", limit: 200
    t.decimal "price",                 precision: 6, scale: 2
  end

  create_table "customers", primary_key: "customerID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstName", limit: 50
    t.string "lastName",  limit: 50
    t.string "email",     limit: 50
  end

  create_table "employees", primary_key: "employeeID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstName",   limit: 50
    t.string "lastName",    limit: 50
    t.date   "dateOfBirth"
    t.date   "startDate"
  end

  create_table "invoices", primary_key: "invoiceID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "bookID",      null: false
    t.integer "employeeID",  null: false
    t.integer "customerID",  null: false
    t.integer "orderID",     null: false
    t.date    "invoiceDate"
  end

  create_table "orders", primary_key: "orderID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "bookID",    null: false
    t.date    "orderDate"
  end

  end
end
