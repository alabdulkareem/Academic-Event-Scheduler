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

ActiveRecord::Schema.define(version: 20161215193356) do

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "lecture_title"
    t.string   "description"
    t.string   "email"
    t.integer  "nb_of_times"
    t.decimal  "duration",      precision: 10
    t.string   "link_1"
    t.string   "link_2"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "possible_days", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "day"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "from_time"
    t.string   "to_time"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_possible_days_on_event_id", using: :btree
  end

  create_table "selected_times", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "student_id"
    t.integer  "event_id"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "from_time"
    t.string   "to_time"
    t.boolean  "cell_status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["event_id"], name: "index_selected_times_on_event_id", using: :btree
    t.index ["student_id"], name: "index_selected_times_on_student_id", using: :btree
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "event_id"
    t.string   "student_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["event_id"], name: "index_students_on_event_id", using: :btree
  end

  add_foreign_key "possible_days", "events"
  add_foreign_key "selected_times", "events"
  add_foreign_key "selected_times", "students"
  add_foreign_key "students", "events"
end
