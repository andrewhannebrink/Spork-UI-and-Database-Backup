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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130723201310) do

  create_table "servings", :force => true do |t|
    t.integer  "usdaId"
    t.string   "name"
    t.string   "group"
    t.float    "kcal"
    t.float    "protein"
    t.float    "carb"
    t.float    "fat"
    t.float    "vitA"
    t.float    "vitB1"
    t.float    "vitB2"
    t.float    "vitB3"
    t.float    "vitB5"
    t.float    "vitB6"
    t.float    "vitB9"
    t.float    "vitB12"
    t.float    "vitC"
    t.float    "vitD"
    t.float    "vitE"
    t.float    "fiber"
    t.float    "potassium"
    t.float    "calcium"
    t.float    "phosphorus"
    t.float    "magnesium"
    t.float    "manganese"
    t.float    "iron"
    t.float    "sodium"
    t.float    "copper"
    t.float    "zinc"
    t.float    "selenium"
    t.float    "fluoride"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
