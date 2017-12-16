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

ActiveRecord::Schema.define(version: 20171216024402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lookups", force: :cascade do |t|
    t.string "category"
    t.string "dropdown_value"
    t.integer "order_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "addressline1"
    t.string "addressline2"
    t.string "addressline3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_categories", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_inventories", force: :cascade do |t|
    t.string "specific_skill"
    t.string "remarks", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "skill_category_id"
    t.index ["skill_category_id"], name: "index_skill_inventories_on_skill_category_id"
  end

  create_table "user_certifications", force: :cascade do |t|
    t.bigint "user_id"
    t.string "description"
    t.date "date_issued"
    t.date "date_expiry"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_certifications_on_user_id"
  end

  create_table "user_educations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "education_type"
    t.string "institution"
    t.string "degree"
    t.string "program"
    t.string "specialization"
    t.date "date_started"
    t.date "date_completed"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_educations_on_user_id"
  end

  create_table "user_trainings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "description"
    t.date "date_started"
    t.date "date_completed"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_trainings_on_user_id"
  end

  create_table "user_work_experience_roles", force: :cascade do |t|
    t.bigint "user_work_experience_id"
    t.string "role"
    t.date "date_from"
    t.date "date_to"
    t.string "project_name"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "role_summary", default: "", null: false
    t.text "recognitions", default: "", null: false
    t.index ["user_work_experience_id"], name: "index_user_work_experience_roles_on_user_work_experience_id"
  end

  create_table "user_work_experiences", force: :cascade do |t|
    t.bigint "user_id"
    t.string "company_name"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "country"
    t.string "industry"
    t.string "position"
    t.date "date_from"
    t.date "date_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_work_experiences_on_user_id"
  end

  create_table "user_work_skills", force: :cascade do |t|
    t.bigint "skill_inventory_id"
    t.bigint "user_work_experience_role_id"
    t.integer "total_experience"
    t.date "last_time_used"
    t.integer "last_time_used_duration_years"
    t.string "refresher"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_inventory_id"], name: "index_user_work_skills_on_skill_inventory_id"
    t.index ["user_work_experience_role_id"], name: "index_user_work_skills_on_user_work_experience_role_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "family_name", default: "", null: false
    t.string "given_name", default: "", null: false
    t.string "middle_name", default: ""
    t.string "port_of_entry", default: "", null: false
    t.date "pr_date"
    t.string "encrypted_password", default: "", null: false
    t.string "address", default: "", null: false
    t.string "city", default: "", null: false
    t.string "province", default: "", null: false
    t.string "country", default: "", null: false
    t.string "nationality", default: "", null: false
    t.string "gender", default: "", null: false
    t.date "birthdate"
    t.string "mobile_phone", default: ""
    t.string "home_phone", default: ""
    t.string "linkedin", default: ""
    t.string "facebook", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.boolean "admin", default: false, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "skill_inventories", "skill_categories"
end
