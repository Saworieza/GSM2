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

ActiveRecord::Schema.define(version: 2018_09_09_220051) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costcenters", force: :cascade do |t|
    t.bigint "number"
    t.text "details"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_costcenters_on_account_id"
  end

  create_table "customerpos", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.integer "customerquote_id"
    t.integer "scope_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerquote_id"], name: "index_customerpos_on_customerquote_id"
    t.index ["scope_id"], name: "index_customerpos_on_scope_id"
  end

  create_table "customerquotes", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.integer "amount"
    t.integer "costcenter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costcenter_id"], name: "index_customerquotes_on_costcenter_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.integer "status_id"
    t.integer "scope_id"
    t.integer "customerpo_id"
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerpo_id"], name: "index_invoices_on_customerpo_id"
    t.index ["scope_id"], name: "index_invoices_on_scope_id"
    t.index ["site_id"], name: "index_invoices_on_site_id"
    t.index ["status_id"], name: "index_invoices_on_status_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "milestone_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scopes", force: :cascade do |t|
    t.string "scope_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.bigint "number"
    t.integer "tower_height"
    t.integer "status_id"
    t.integer "scope_id"
    t.integer "town_id"
    t.integer "customerpo_id"
    t.integer "customerquote_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerpo_id"], name: "index_sites_on_customerpo_id"
    t.index ["customerquote_id"], name: "index_sites_on_customerquote_id"
    t.index ["region_id"], name: "index_sites_on_region_id"
    t.index ["scope_id"], name: "index_sites_on_scope_id"
    t.index ["status_id"], name: "index_sites_on_status_id"
    t.index ["town_id"], name: "index_sites_on_town_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_towns_on_region_id"
  end

end
