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

ActiveRecord::Schema.define(version: 20160924144528) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                         collation: "latin1_swedish_ci"
    t.string   "account",                                      collation: "latin1_swedish_ci"
    t.boolean  "del_mark",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest",                              collation: "latin1_swedish_ci"
  end

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "file"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "info",       limit: 65535
  end

  create_table "systems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                     collation: "latin1_swedish_ci"
    t.string   "title",                    collation: "latin1_swedish_ci"
    t.string   "description",              collation: "latin1_swedish_ci"
    t.string   "keyword",                  collation: "latin1_swedish_ci"
    t.string   "email",                    collation: "latin1_swedish_ci"
    t.string   "phone",                    collation: "latin1_swedish_ci"
    t.string   "fax",                      collation: "latin1_swedish_ci"
    t.string   "address",                  collation: "latin1_swedish_ci"
    t.string   "facebook",                 collation: "latin1_swedish_ci"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
