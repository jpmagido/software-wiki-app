# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_30_184121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concepts", force: :cascade do |t|
    t.string "name"
    t.string "short_text"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.integer "name", default: 0
    t.string "title"
    t.text "description"
    t.string "target_type", null: false
    t.bigint "target_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_interactions_on_role_id"
    t.index ["target_type", "target_id"], name: "index_interactions_on_target"
  end

  create_table "procedures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "actions"
    t.bigint "interaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interaction_id"], name: "index_procedures_on_interaction_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "concept_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_id"], name: "index_properties_on_concept_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "software_concepts", force: :cascade do |t|
    t.bigint "concept_id", null: false
    t.bigint "software_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_id"], name: "index_software_concepts_on_concept_id"
    t.index ["software_id"], name: "index_software_concepts_on_software_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "online", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interactions", "roles"
  add_foreign_key "procedures", "interactions"
  add_foreign_key "properties", "concepts"
  add_foreign_key "software_concepts", "concepts"
  add_foreign_key "software_concepts", "softwares"
end
