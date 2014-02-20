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

ActiveRecord::Schema.define(version: 20140220183734) do

  create_table "attributes", force: true do |t|
    t.string   "name"
    t.integer  "attributeType_id"
    t.boolean  "isLocalizable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cetegories", force: true do |t|
    t.string   "name"
    t.string   "catID"
    t.string   "parentCatID"
    t.boolean  "isRoot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_attributes", force: true do |t|
    t.integer  "product_id"
    t.integer  "attribute_id"
    t.string   "locale"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.integer  "productType_id"
    t.string   "shortDescription"
    t.string   "longDescription"
    t.string   "upc"
    t.string   "style_id"
    t.string   "sku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
