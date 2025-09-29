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

ActiveRecord::Schema[8.0].define(version: 2025_09_26_013951) do
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

  create_table "file_analysis_with_documents", force: :cascade do |t|
    t.string "fileName", null: false
    t.string "displayName", null: false
    t.string "status", null: false
    t.string "createdAt", null: false
    t.integer "processedAt", null: false
    t.string "orgId", null: false
    t.string "clientId", null: false
    t.integer "fileSize", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "rotations"
  end

  create_table "fileanalysis_processeddocs", force: :cascade do |t|
    t.integer "file_analysis_with_document_id", null: false
    t.integer "processed_document_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["file_analysis_with_document_id"], name: "idx_on_file_analysis_with_document_id_198b8a44d3"
    t.index ["processed_document_id"], name: "index_fileanalysis_processeddocs_on_processed_document_id"
  end

  create_table "integration_partners", force: :cascade do |t|
    t.string "type", null: false
    t.string "credentialId", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processed_documents", force: :cascade do |t|
    t.string "type", null: false
    t.integer "pageNum", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "client_integrationpartners", "clients"
  add_foreign_key "client_integrationpartners", "integration_partners"
  add_foreign_key "fileanalysis_processeddocs", "file_analysis_with_documents"
  add_foreign_key "fileanalysis_processeddocs", "processed_documents"
end
