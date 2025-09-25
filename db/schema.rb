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

ActiveRecord::Schema[8.0].define(version: 2025_09_24_182249) do
  create_table "client_integrationpartners", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "integration_partner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id", "integration_partner_id"], name: "idx_on_client_Id_integration_partner_id_be1aec04d7", unique: true
    t.index ["client_id"], name: "index_client_integrationpartners_on_client_id"
    t.index ["integration_partner_id"], name: "index_client_integrationpartners_on_integration_partner_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "orgId", null: false
    t.string "clientId", null: false
    t.string "name", null: false
    t.string "imgUrl", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "integration_partners", force: :cascade do |t|
    t.string "type", null: false
    t.string "credentialId", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "client_integrationpartners", "clients"
  add_foreign_key "client_integrationpartners", "integration_partners"
end
