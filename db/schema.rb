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

ActiveRecord::Schema.define(version: 20151024084153) do

  create_table "custom_auto_increments", force: :cascade do |t|
    t.string   "counter_model_name"
    t.integer  "counter",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custom_auto_increments", ["counter_model_name"], name: "index_custom_auto_increments_on_counter_model_name"

  create_table "lesson_classes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.string   "room"
    t.integer  "creditsNumber", default: 3
    t.string   "discipline"
    t.string   "day"
    t.string   "time"
    t.string   "teacher"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "student_id"
    t.integer  "timesPerWeek"
  end

  add_index "lessons", ["student_id"], name: "index_lessons_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "student_id",                          null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "maxCredits"
    t.integer  "currentCredits"
    t.integer  "course"
    t.string   "spec"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
