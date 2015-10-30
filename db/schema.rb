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

ActiveRecord::Schema.define(version: 20151030190317) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "muscle_group_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "exercises", ["muscle_group_id"], name: "index_exercises_on_muscle_group_id"

  create_table "muscle_groups", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "programs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs_training_days", force: :cascade do |t|
    t.integer "program_id"
    t.integer "training_day_id"
  end

  add_index "programs_training_days", ["program_id"], name: "index_programs_training_days_on_program_id"
  add_index "programs_training_days", ["training_day_id"], name: "index_programs_training_days_on_training_day_id"

  create_table "training_day_exercises", force: :cascade do |t|
    t.integer  "training_day_id"
    t.integer  "exercise_id"
    t.integer  "repetition"
    t.integer  "sets"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "training_day_exercises", ["exercise_id"], name: "index_training_day_exercises_on_exercise_id"
  add_index "training_day_exercises", ["training_day_id"], name: "index_training_day_exercises_on_training_day_id"

  create_table "training_days", force: :cascade do |t|
    t.integer  "wday"
    t.integer  "muscle_group_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "training_days", ["muscle_group_id"], name: "index_training_days_on_muscle_group_id"

  create_table "users", force: :cascade do |t|
    t.string   "gender"
    t.integer  "age"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "experience"
    t.integer  "activity"
    t.integer  "physical_level"
    t.integer  "complexity"
    t.integer  "training_type"
    t.integer  "stature"
    t.integer  "blood_pressure"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
