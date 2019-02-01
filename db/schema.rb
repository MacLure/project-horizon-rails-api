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

ActiveRecord::Schema.define(version: 2019_02_01_025215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.bigint "phone"
    t.string "image_url"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "cohort_id"
    t.string "name"
    t.text "body"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohorts", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "name"
    t.integer "course_type"
    t.integer "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.bigint "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_notes", force: :cascade do |t|
    t.integer "admin_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_notes", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "contact_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "phone"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
    t.integer "contact_id"
    t.integer "cohort_id"
    t.date "date"
    t.time "time"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_notes", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "student_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "phone"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.integer "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cohort_id"
  end

  create_table "submission_comments", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "submission_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "assignment_id"
    t.integer "student_id"
    t.string "url"
    t.string "body"
    t.boolean "is_approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
