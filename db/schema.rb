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

ActiveRecord::Schema.define(version: 2021_03_30_091240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "pincode"
    t.float "latitude"
    t.float "longitude"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "appointment_logs", force: :cascade do |t|
    t.string "action_performed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "appointment_id"
    t.integer "status"
    t.bigint "modified_by_id"
    t.index ["appointment_id"], name: "index_appointment_logs_on_appointment_id"
    t.index ["modified_by_id"], name: "index_appointment_logs_on_modified_by_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "vaccine_name"
    t.integer "status"
    t.integer "dose"
    t.integer "duration"
    t.bigint "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "clinic_id"
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.index ["clinic_id"], name: "index_appointments_on_clinic_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "clinic_admin_profiles", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "clinic_id"
    t.index ["clinic_id"], name: "index_clinic_admin_profiles_on_clinic_id"
    t.index ["user_id"], name: "index_clinic_admin_profiles_on_user_id"
  end

  create_table "clinic_admins", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_clinic_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clinic_admins_on_reset_password_token", unique: true
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "clinic_admin_id"
    t.index ["clinic_admin_id"], name: "index_clinics_on_clinic_admin_id"
  end

  create_table "clinics_doctors", force: :cascade do |t|
    t.bigint "clinic_id"
    t.bigint "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_id"], name: "index_clinics_doctors_on_clinic_id"
    t.index ["doctor_id"], name: "index_clinics_doctors_on_doctor_id"
  end

  create_table "comorbidities", force: :cascade do |t|
    t.text "disease_description"
    t.string "report_file"
    t.text "suggestion_by_doctor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.bigint "appointment_id"
    t.index ["appointment_id"], name: "index_comorbidities_on_appointment_id"
    t.index ["patient_id"], name: "index_comorbidities_on_patient_id"
  end

  create_table "doctor_profiles", force: :cascade do |t|
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_doctor_profiles_on_user_id"
  end

  create_table "doctor_schedules", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "status"
    t.bigint "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "clinic_id"
    t.bigint "doctor_id"
    t.index ["clinic_id"], name: "index_doctor_schedules_on_clinic_id"
    t.index ["doctor_id"], name: "index_doctor_schedules_on_doctor_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.string "id_proof"
    t.boolean "having_comorbidities"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_patient_profiles_on_user_id"
  end

  create_table "patient_reports", force: :cascade do |t|
    t.string "certificate_file"
    t.bigint "uploaded_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_patient_reports_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "users", force: :cascade do |t|
    t.string "aadhar_number"
    t.string "phone_number"
    t.string "email"
    t.string "gender"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "type"
    t.boolean "is_relative"
    t.bigint "parent_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["parent_id"], name: "index_users_on_parent_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointment_logs", "users", column: "modified_by_id"
  add_foreign_key "appointments", "users", column: "doctor_id"
  add_foreign_key "appointments", "users", column: "patient_id"
  add_foreign_key "clinics", "users", column: "clinic_admin_id"
  add_foreign_key "clinics_doctors", "users", column: "doctor_id"
  add_foreign_key "comorbidities", "users", column: "patient_id"
  add_foreign_key "doctor_schedules", "users", column: "doctor_id"
  add_foreign_key "patient_reports", "users", column: "patient_id"
  add_foreign_key "users", "users", column: "parent_id"
end
