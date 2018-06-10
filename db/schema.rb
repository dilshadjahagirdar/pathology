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

ActiveRecord::Schema.define(version: 20180424095507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "patients", force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "report_id", limit: 10000
    t.string "phone"
    t.integer "age"
    t.string "gender"
    t.string "address"
    t.string "referred_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "patient_id"
    t.integer "test_id"
    t.text "cost"
    t.text "deposite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.text "user_id"
    t.text "patient_id"
    t.text "report_id"
    t.text "test_id"
    t.text "results"
    t.text "status"
    t.text "unit"
    t.text "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer "user_id"
    t.text "test_name"
    t.text "widal_test"
    t.text "salmonella_typhi_O"
    t.text "salmonella_typhi_H"
    t.text "widal_result"
    t.text "widal_test_method"
    t.text "significant_titre"
    t.text "note"
    t.text "limitation_of_test"
    t.text "BSL_FPP"
    t.text "blood_sugar_fasting"
    t.text "blood_sugar_post_prandial"
    t.text "BSL_FPP_method"
    t.text "blood_sugar_level"
    t.text "blood_sugar_level_result"
    t.text "blood_sugar_level_method"
    t.text "renal_function"
    t.text "blood_urea_level"
    t.text "bun"
    t.text "sr_creatinine"
    t.text "liver_function"
    t.text "bilirubin_total"
    t.text "bilirubin_direct"
    t.text "bilirubin_indirect"
    t.text "sgpt"
    t.text "sgot"
    t.text "alkaline_phosphatase"
    t.text "total_protein"
    t.text "albumin"
    t.text "globulin"
    t.text "serum_electrolytes"
    t.text "sr_sodium"
    t.text "sr_pottasium"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
