class CreateDatabaseStructure < ActiveRecord::Migration[5.0]
  def up
  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",     limit: 200
    t.string  "author",    limit: 50
    t.string  "category",  limit: 200
    t.decimal "pages",                 precision: 5
    t.string  "publisher", limit: 200
    t.decimal "price",                 precision: 6, scale: 2
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "order_item_id",    null: false
    t.date    "orderDate"
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "book_id",    null: false
    t.integer "order_id", null: false
    t.integer "bookQuantity"
  end

  create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.boolean "isAdmin", :default => 0
  end

    add_index :users, :email
    add_index :users, :remember_token
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.integer "order_id",     null: false
    t.date    "invoiceDate"
  end
  begin

  end
end

