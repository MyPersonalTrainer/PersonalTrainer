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

ActiveRecord::Schema.define(version: 20151207195629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_descriptions", force: :cascade do |t|
    t.text     "step"
    t.integer  "exercise_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exercise_descriptions", ["exercise_id"], name: "index_exercise_descriptions_on_exercise_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.integer  "muscle_group_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "ex_image_file_name"
    t.string   "ex_image_content_type"
    t.integer  "ex_image_file_size"
    t.datetime "ex_image_updated_at"
    t.string   "video_url"
  end

  add_index "exercises", ["muscle_group_id"], name: "index_exercises_on_muscle_group_id", using: :btree

  create_table "muscle_groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "parameters", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "height"
    t.integer  "complexity"
    t.boolean  "can_do_bars"
    t.boolean  "can_do_hbar"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "parameters", ["user_id"], name: "index_parameters_on_user_id", using: :btree

  create_table "program_training_days", force: :cascade do |t|
    t.integer  "program_id"
    t.integer  "training_day_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "program_training_days", ["program_id"], name: "index_program_training_days_on_program_id", using: :btree
  add_index "program_training_days", ["training_day_id"], name: "index_program_training_days_on_training_day_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.integer  "training_type"
    t.integer  "training_place"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "training_day_exercises", force: :cascade do |t|
    t.integer  "training_day_id"
    t.integer  "exercise_id"
    t.integer  "repetitions"
    t.integer  "sets"
    t.integer  "rest_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "training_day_exercises", ["exercise_id"], name: "index_training_day_exercises_on_exercise_id", using: :btree
  add_index "training_day_exercises", ["training_day_id"], name: "index_training_day_exercises_on_training_day_id", using: :btree

  create_table "training_days", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_programs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_programs", ["program_id"], name: "index_user_programs_on_program_id", using: :btree
  add_index "user_programs", ["user_id"], name: "index_user_programs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.boolean  "gender"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exercise_descriptions", "exercises"
  add_foreign_key "parameters", "users"
  add_foreign_key "program_training_days", "programs"
  add_foreign_key "program_training_days", "training_days"
  add_foreign_key "training_day_exercises", "exercises"
  add_foreign_key "training_day_exercises", "training_days"
  add_foreign_key "user_programs", "programs"
  add_foreign_key "user_programs", "users"
end
