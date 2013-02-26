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

ActiveRecord::Schema.define(:version => 20130221213514) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "ecm_models_categories", :force => true do |t|
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_es"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ecm_models_eye_colors", :force => true do |t|
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_es"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ecm_models_genders", :force => true do |t|
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_es"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ecm_models_hair_colors", :force => true do |t|
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_es"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ecm_models_people", :force => true do |t|
    t.text     "acting_experience_de"
    t.text     "activities_de"
    t.text     "dialects_de"
    t.text     "education_de"
    t.text     "features_de"
    t.text     "fine_arts_gifts_de"
    t.text     "hobbies_de"
    t.text     "internal_notes_de"
    t.text     "location_de"
    t.text     "musical_education_de"
    t.text     "notes_de"
    t.text     "profession_de"
    t.text     "acting_experience_en"
    t.text     "activities_en"
    t.text     "dialects_en"
    t.text     "education_en"
    t.text     "features_en"
    t.text     "fine_arts_gifts_en"
    t.text     "hobbies_en"
    t.text     "internal_notes_en"
    t.text     "location_en"
    t.text     "musical_education_en"
    t.text     "notes_en"
    t.text     "profession_en"
    t.text     "acting_experience_es"
    t.text     "activities_es"
    t.text     "dialects_es"
    t.text     "education_es"
    t.text     "features_es"
    t.text     "fine_arts_gifts_es"
    t.text     "hobbies_es"
    t.text     "internal_notes_es"
    t.text     "location_es"
    t.text     "musical_education_es"
    t.text     "notes_es"
    t.text     "profession_es"
    t.date     "birthdate"
    t.integer  "breast_size"
    t.integer  "collar_size"
    t.integer  "waist_size"
    t.integer  "hips_size"
    t.string   "email"
    t.string   "firstname"
    t.integer  "german_size"
    t.boolean  "glasses"
    t.integer  "hand_size"
    t.boolean  "has_braces"
    t.boolean  "has_children"
    t.boolean  "has_driving_license"
    t.integer  "hat_size"
    t.integer  "height"
    t.string   "identifier"
    t.boolean  "is_tattooed"
    t.boolean  "is_pierced"
    t.integer  "jeans_length"
    t.integer  "jeans_width"
    t.string   "lastname"
    t.string   "mobile"
    t.string   "phone"
    t.integer  "shoe_size"
    t.boolean  "visible",              :default => true
    t.text     "websites"
    t.integer  "category_id"
    t.integer  "gender_id"
    t.integer  "eye_color_id"
    t.integer  "hair_color_id"
    t.integer  "skin_type_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "ecm_models_skin_types", :force => true do |t|
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_es"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
