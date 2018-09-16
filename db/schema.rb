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

ActiveRecord::Schema.define(version: 2018_09_16_190630) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contractorinvoices", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.integer "milestone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id"
    t.integer "stage_id"
    t.integer "contractorpo_id"
    t.index ["contractorpo_id"], name: "index_contractorinvoices_on_contractorpo_id"
    t.index ["milestone_id"], name: "index_contractorinvoices_on_milestone_id"
    t.index ["site_id"], name: "index_contractorinvoices_on_site_id"
    t.index ["stage_id"], name: "index_contractorinvoices_on_stage_id"
  end

  create_table "contractorpos", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.text "description"
    t.integer "contractorquote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractorquote_id"], name: "index_contractorpos_on_contractorquote_id"
  end

  create_table "contractorquotes", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.text "description"
    t.integer "site_id"
    t.integer "customerpo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contractorpo_id"
    t.integer "contractor_id"
    t.index ["contractor_id"], name: "index_contractorquotes_on_contractor_id"
    t.index ["contractorpo_id"], name: "index_contractorquotes_on_contractorpo_id"
    t.index ["customerpo_id"], name: "index_contractorquotes_on_customerpo_id"
    t.index ["site_id"], name: "index_contractorquotes_on_site_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id"
    t.index ["site_id"], name: "index_contractors_on_site_id"
    t.index ["status_id"], name: "index_contractors_on_status_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "amount"
    t.date "date"
    t.integer "contractor_id"
    t.integer "site_id"
    t.integer "contractorpo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id"
    t.index ["contractorpo_id"], name: "index_contracts_on_contractorpo_id"
    t.index ["site_id"], name: "index_contracts_on_site_id"
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
    t.integer "site_id"
    t.index ["customerquote_id"], name: "index_customerpos_on_customerquote_id"
    t.index ["scope_id"], name: "index_customerpos_on_scope_id"
    t.index ["site_id"], name: "index_customerpos_on_site_id"
  end

  create_table "customerquotes", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.integer "amount"
    t.integer "costcenter_id"
    t.integer "scope_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id"
    t.index ["costcenter_id"], name: "index_customerquotes_on_costcenter_id"
    t.index ["scope_id"], name: "index_customerquotes_on_scope_id"
    t.index ["site_id"], name: "index_customerquotes_on_site_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
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
    t.integer "milestone_id"
    t.integer "stage_id"
    t.index ["customerpo_id"], name: "index_invoices_on_customerpo_id"
    t.index ["milestone_id"], name: "index_invoices_on_milestone_id"
    t.index ["scope_id"], name: "index_invoices_on_scope_id"
    t.index ["site_id"], name: "index_invoices_on_site_id"
    t.index ["stage_id"], name: "index_invoices_on_stage_id"
    t.index ["status_id"], name: "index_invoices_on_status_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "phase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paymentvouchers", force: :cascade do |t|
    t.bigint "number"
    t.date "date"
    t.integer "amount"
    t.integer "contractor_id"
    t.integer "milestone_id"
    t.integer "site_id"
    t.integer "contractorinvoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stage_id"
    t.index ["contractor_id"], name: "index_paymentvouchers_on_contractor_id"
    t.index ["contractorinvoice_id"], name: "index_paymentvouchers_on_contractorinvoice_id"
    t.index ["milestone_id"], name: "index_paymentvouchers_on_milestone_id"
    t.index ["site_id"], name: "index_paymentvouchers_on_site_id"
    t.index ["stage_id"], name: "index_paymentvouchers_on_stage_id"
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
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_sites_on_region_id"
    t.index ["scope_id"], name: "index_sites_on_scope_id"
    t.index ["status_id"], name: "index_sites_on_status_id"
    t.index ["town_id"], name: "index_sites_on_town_id"
  end

  create_table "stages", force: :cascade do |t|
    t.integer "percentage"
    t.integer "milestone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["milestone_id"], name: "index_stages_on_milestone_id"
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
