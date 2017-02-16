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

ActiveRecord::Schema.define(version: 20170216160944) do

  create_table "answer", force: :cascade do |t|
    t.integer "question_id", limit: 4
    t.integer "staff_id",    limit: 4
    t.string  "content",     limit: 255
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "section",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "material", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "department_id", limit: 4
    t.integer  "staff_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "content",       limit: 65535
  end

  create_table "participants", force: :cascade do |t|
    t.string  "event_type", limit: 255
    t.integer "event_id",   limit: 4
    t.integer "student_id", limit: 4
  end

  create_table "question", force: :cascade do |t|
    t.string  "question_type", limit: 255
    t.integer "department_id", limit: 4
    t.integer "staff_id",      limit: 4
    t.string  "content",       limit: 255
    t.string  "content_type",  limit: 255
  end

  create_table "staff_subjects", force: :cascade do |t|
    t.integer  "staff_id",   limit: 4
    t.integer  "subject_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "last_name",     limit: 255
    t.date     "date_of_birth"
    t.string   "phone",         limit: 255
    t.string   "mobile",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "last_name",     limit: 255
    t.date     "date_of_birth"
    t.string   "phone",         limit: 255
    t.string   "mobile",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
  end

  create_table "study_material", force: :cascade do |t|
    t.boolean "group",            limit: 1
    t.string  "create_tabled_by", limit: 255
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "test", force: :cascade do |t|
    t.string  "creator_type",  limit: 255
    t.integer "creator_id",    limit: 4
    t.integer "test_duration", limit: 4
    t.string  "type",          limit: 255
  end

  create_table "test_answer", force: :cascade do |t|
    t.integer "test_id",     limit: 4
    t.integer "student_id",  limit: 4
    t.integer "question_id", limit: 4
    t.string  "answer",      limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "email",                limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "password_digest",      limit: 255
    t.string   "remember_digest",      limit: 255
    t.boolean  "admin",                limit: 1,   default: false
    t.string   "activation_digest",    limit: 255
    t.boolean  "activated",            limit: 1,   default: false
    t.datetime "activated_at"
    t.string   "reset_digest",         limit: 255
    t.datetime "reset_sent_at"
    t.string   "authentication_token", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
