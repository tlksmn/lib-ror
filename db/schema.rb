# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_24_125545) do
  create_table "authors", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.integer "country_id"
    t.index ["country_id"], name: "index_authors_on_country_id"
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.index ["author_id", "book_id"], name: "index_authors_books_on_author_id_and_book_id", unique: true
  end

  create_table "book_arrangements", force: :cascade do |t|
    t.integer "shelf_id", null: false
    t.integer "book_publisher_id", null: false
    t.integer "lib_id", null: false
    t.integer "book_id", null: false
    t.integer "floor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "printed_book_id"
    t.index ["book_id"], name: "index_book_arrangements_on_book_id"
    t.index ["book_publisher_id"], name: "index_book_arrangements_on_book_publisher_id"
    t.index ["lib_id"], name: "index_book_arrangements_on_lib_id"
    t.index ["printed_book_id"], name: "index_book_arrangements_on_printed_book_id"
    t.index ["shelf_id"], name: "index_book_arrangements_on_shelf_id"
  end

  create_table "book_publishers", force: :cascade do |t|
    t.integer "year"
    t.integer "printing"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "publisher_id"
    t.integer "book_id"
    t.integer "isbn"
    t.index ["book_id"], name: "index_book_publishers_on_book_id"
    t.index ["country_id"], name: "index_book_publishers_on_country_id"
    t.index ["publisher_id", "book_id", "country_id"], name: "index_book_publishers_on_publisher_id_and_book_id_and_country_id", unique: true
    t.index ["publisher_id"], name: "index_book_publishers_on_publisher_id"
  end

  create_table "booking_books", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "printed_book_id", null: false
    t.integer "lib_id", null: false
    t.date "from"
    t.date "to"
    t.string "status"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lib_id"], name: "index_booking_books_on_lib_id"
    t.index ["printed_book_id"], name: "index_booking_books_on_printed_book_id"
    t.index ["user_id"], name: "index_booking_books_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libs", force: :cascade do |t|
    t.integer "country_id"
    t.string "name"
    t.string "city"
    t.string "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_libs_on_country_id"
  end

  create_table "printed_books", force: :cascade do |t|
    t.integer "book_publisher_id", null: false
    t.integer "book_id", null: false
    t.string "ind_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_printed_books_on_book_id"
    t.index ["book_publisher_id"], name: "index_printed_books_on_book_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_publishers_on_country_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "line"
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_quotes_on_author_id"
    t.index ["book_id"], name: "index_quotes_on_book_id"
  end

  create_table "shelves", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "lib_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lib_id"], name: "index_shelves_on_lib_id"
  end

  create_table "users", force: :cascade do |t|
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "personalCode"
    t.string "city"
    t.integer "country_id"
    t.string "phone"
    t.string "live_street"
    t.index ["country_id"], name: "index_users_on_country_id"
  end

  add_foreign_key "authors", "countries"
  add_foreign_key "book_arrangements", "book_publishers"
  add_foreign_key "book_arrangements", "books"
  add_foreign_key "book_arrangements", "libs"
  add_foreign_key "book_arrangements", "printed_books"
  add_foreign_key "book_arrangements", "shelves"
  add_foreign_key "book_publishers", "books"
  add_foreign_key "book_publishers", "countries"
  add_foreign_key "book_publishers", "publishers"
  add_foreign_key "booking_books", "libs"
  add_foreign_key "booking_books", "printed_books"
  add_foreign_key "booking_books", "users"
  add_foreign_key "books", "genres"
  add_foreign_key "libs", "countries"
  add_foreign_key "printed_books", "book_publishers"
  add_foreign_key "printed_books", "books"
  add_foreign_key "publishers", "countries"
  add_foreign_key "quotes", "authors"
  add_foreign_key "quotes", "books"
  add_foreign_key "shelves", "libs"
  add_foreign_key "users", "countries"
end
