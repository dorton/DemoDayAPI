# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160905122143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "venue_name"
    t.string   "venue_street"
    t.string   "venue_city"
    t.string   "venue_zip"
    t.date     "demo_day_date"
    t.string   "slug"
    t.integer  "city_id"
  end

  create_table "cohortstaffs", force: :cascade do |t|
    t.integer  "staff_id"
    t.integer  "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cohortstaffs", ["cohort_id"], name: "index_cohortstaffs_on_cohort_id", using: :btree
  add_index "cohortstaffs", ["staff_id"], name: "index_cohortstaffs_on_staff_id", using: :btree

  create_table "names", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "app_name"
    t.string   "app_url"
    t.string   "rationale"
    t.string   "tech_used"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "cohort_id"
    t.boolean  "dont_publish_project"
  end

  add_index "projects", ["cohort_id"], name: "index_projects_on_cohort_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "bio"
    t.string   "pic"
    t.integer  "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "ta"
  end

  add_index "staffs", ["cohort_id"], name: "index_staffs_on_cohort_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "course"
    t.string   "portfolio_url"
    t.string   "email"
    t.string   "github_url"
    t.string   "profile_pic_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "group_project"
    t.integer  "project_id"
    t.string   "bio"
    t.boolean  "dont_publish_student"
  end

  add_index "students", ["group_project"], name: "index_students_on_group_project", using: :btree
  add_index "students", ["project_id"], name: "index_students_on_project_id", using: :btree

  add_foreign_key "cohortstaffs", "cohorts"
  add_foreign_key "cohortstaffs", "staffs"
  add_foreign_key "staffs", "cohorts"
end
