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

ActiveRecord::Schema.define(version: 2019_01_19_162552) do

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "client_group_id"
    t.string "ruc"
    t.string "pais"
    t.string "direccion_postal"
    t.datetime "activation_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_group_id"], name: "index_clients_on_client_group_id"
  end

  create_table "damages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lots", force: :cascade do |t|
    t.string "name"
    t.integer "imperfection_id"
    t.integer "damage_id"
    t.integer "quality_id"
    t.integer "variety_id"
    t.integer "certification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_id"], name: "index_lots_on_certification_id"
    t.index ["damage_id"], name: "index_lots_on_damage_id"
    t.index ["imperfection_id"], name: "index_lots_on_imperfection_id"
    t.index ["quality_id"], name: "index_lots_on_quality_id"
    t.index ["variety_id"], name: "index_lots_on_variety_id"
  end

  create_table "pledgees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedences", force: :cascade do |t|
    t.string "name"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_procedences_on_client_id"
  end

  create_table "qualities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reception_points", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reception_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_of_vehicles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "varieties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weight_details", force: :cascade do |t|
    t.integer "reception_point_id"
    t.integer "reception_status_id"
    t.string "harvest"
    t.integer "client_id"
    t.datetime "reception_date"
    t.integer "type_of_vehicle_id"
    t.string "plate"
    t.integer "driver_id"
    t.string "remission_number"
    t.string "procedence"
    t.string "receipt"
    t.string "waste_in_transit"
    t.string "pledgee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_weight_details_on_client_id"
    t.index ["driver_id"], name: "index_weight_details_on_driver_id"
    t.index ["reception_point_id"], name: "index_weight_details_on_reception_point_id"
    t.index ["reception_status_id"], name: "index_weight_details_on_reception_status_id"
    t.index ["type_of_vehicle_id"], name: "index_weight_details_on_type_of_vehicle_id"
  end

end
