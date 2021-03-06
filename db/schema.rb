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

ActiveRecord::Schema.define(version: 2020_06_19_040143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diets", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id", null: false
    t.date "initial_date", null: false
    t.date "final_date", null: false
    t.integer "goal_weight", null: false
    t.index ["user_id"], name: "index_diets_on_user_id"
  end

  create_table "food_option_meals", force: :cascade do |t|
    t.string "description"
    t.bigint "meal_id"
    t.bigint "food_option_id"
    t.index ["food_option_id"], name: "index_food_option_meals_on_food_option_id"
    t.index ["meal_id"], name: "index_food_option_meals_on_meal_id"
  end

  create_table "food_options", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_food_options_on_user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "schedule_time"
    t.string "description"
    t.bigint "diet_id"
    t.string "kind"
    t.index ["diet_id"], name: "index_meals_on_diet_id"
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

  create_table "weight_movements", force: :cascade do |t|
    t.float "weight", null: false
    t.date "reference_date", null: false
    t.bigint "diet_id"
    t.index ["diet_id"], name: "index_weight_movements_on_diet_id"
  end

  add_foreign_key "diets", "users"
  add_foreign_key "food_option_meals", "food_options"
  add_foreign_key "food_option_meals", "meals"
  add_foreign_key "food_options", "users"
  add_foreign_key "meals", "diets"
  add_foreign_key "weight_movements", "diets"
end
