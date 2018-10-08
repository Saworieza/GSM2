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

ActiveRecord::Schema.define(version: 2018_10_08_060001) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "contractorinvoices", force: :cascade do |t|
    t.text "invoice_to"
    t.text "pin"
    t.string "unit"
    t.text "description"
    t.string "number"
    t.date "date"
    t.integer "milestone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contractor_id"
    t.integer "stage_id"
    t.integer "contractorpo_id"
    t.integer "contractorquote_id"
    t.integer "user_id"
    t.index ["contractor_id"], name: "index_contractorinvoices_on_contractor_id"
    t.index ["contractorpo_id"], name: "index_contractorinvoices_on_contractorpo_id"
    t.index ["contractorquote_id"], name: "index_contractorinvoices_on_contractorquote_id"
    t.index ["milestone_id"], name: "index_contractorinvoices_on_milestone_id"
    t.index ["stage_id"], name: "index_contractorinvoices_on_stage_id"
    t.index ["user_id"], name: "index_contractorinvoices_on_user_id"
  end

  create_table "contractorpos", force: :cascade do |t|
    t.string "number"
    t.date "date"
    t.float "amount"
    t.text "description"
    t.integer "contractorquote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["contractorquote_id"], name: "index_contractorpos_on_contractorquote_id"
    t.index ["user_id"], name: "index_contractorpos_on_user_id"
  end

  create_table "contractorquotes", force: :cascade do |t|
    t.text "number"
    t.date "date"
    t.integer "amount"
    t.text "description"
    t.integer "site_id"
    t.integer "customerpo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contractorpo_id"
    t.integer "contractor_id"
    t.integer "user_id"
    t.index ["contractor_id"], name: "index_contractorquotes_on_contractor_id"
    t.index ["contractorpo_id"], name: "index_contractorquotes_on_contractorpo_id"
    t.index ["customerpo_id"], name: "index_contractorquotes_on_customerpo_id"
    t.index ["site_id"], name: "index_contractorquotes_on_site_id"
    t.index ["user_id"], name: "index_contractorquotes_on_user_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "telephone"
    t.text "description"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["status_id"], name: "index_contractors_on_status_id"
    t.index ["user_id"], name: "index_contractors_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "amount"
    t.date "date"
    t.integer "contractor_id"
    t.integer "site_id"
    t.integer "contractorpo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id"
    t.index ["contractorpo_id"], name: "index_contracts_on_contractorpo_id"
    t.index ["site_id"], name: "index_contracts_on_site_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "costcenters", force: :cascade do |t|
    t.bigint "number"
    t.text "details"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["account_id"], name: "index_costcenters_on_account_id"
    t.index ["user_id"], name: "index_costcenters_on_user_id"
  end

  create_table "customerpos", force: :cascade do |t|
    t.string "number"
    t.date "date"
    t.integer "amount"
    t.integer "customerquote_id"
    t.integer "scope_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "site_id"
    t.integer "user_id"
    t.index ["customerquote_id"], name: "index_customerpos_on_customerquote_id"
    t.index ["scope_id"], name: "index_customerpos_on_scope_id"
    t.index ["site_id"], name: "index_customerpos_on_site_id"
    t.index ["user_id"], name: "index_customerpos_on_user_id"
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
    t.integer "user_id"
    t.index ["costcenter_id"], name: "index_customerquotes_on_costcenter_id"
    t.index ["scope_id"], name: "index_customerquotes_on_scope_id"
    t.index ["site_id"], name: "index_customerquotes_on_site_id"
    t.index ["user_id"], name: "index_customerquotes_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.text "invoice_to"
    t.text "pin"
    t.string "number"
    t.string "unit"
    t.date "date"
    t.text "description"
    t.integer "status_id"
    t.integer "customerquote_id"
    t.integer "customerpo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "milestone_id"
    t.integer "stage_id"
    t.integer "user_id"
    t.index ["customerpo_id"], name: "index_invoices_on_customerpo_id"
    t.index ["customerquote_id"], name: "index_invoices_on_customerquote_id"
    t.index ["milestone_id"], name: "index_invoices_on_milestone_id"
    t.index ["stage_id"], name: "index_invoices_on_stage_id"
    t.index ["status_id"], name: "index_invoices_on_status_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "invoicings", force: :cascade do |t|
    t.integer "paymentvoucher_id"
    t.integer "contractorinvoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractorinvoice_id"], name: "index_invoicings_on_contractorinvoice_id"
    t.index ["paymentvoucher_id"], name: "index_invoicings_on_paymentvoucher_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "phase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_milestones_on_user_id"
  end

  create_table "paymentvouchers", force: :cascade do |t|
    t.string "number"
    t.date "date"
    t.integer "amount"
    t.string "payment_by"
    t.string "vat_no"
    t.string "pin_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stage_id"
    t.integer "user_id"
    t.index ["stage_id"], name: "index_paymentvouchers_on_stage_id"
    t.index ["user_id"], name: "index_paymentvouchers_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_regions_on_user_id"
  end

  create_table "scopes", force: :cascade do |t|
    t.string "scope_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_scopes_on_user_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.integer "tower_height"
    t.integer "status_id"
    t.integer "scope_id"
    t.integer "town_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["region_id"], name: "index_sites_on_region_id"
    t.index ["scope_id"], name: "index_sites_on_scope_id"
    t.index ["status_id"], name: "index_sites_on_status_id"
    t.index ["town_id"], name: "index_sites_on_town_id"
    t.index ["user_id"], name: "index_sites_on_user_id"
  end

  create_table "stages", force: :cascade do |t|
    t.float "percentage"
    t.integer "milestone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["milestone_id"], name: "index_stages_on_milestone_id"
    t.index ["user_id"], name: "index_stages_on_user_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["region_id"], name: "index_towns_on_region_id"
    t.index ["user_id"], name: "index_towns_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
