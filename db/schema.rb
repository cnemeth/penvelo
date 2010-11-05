# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101104230600) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.text     "headline"
    t.text     "mission"
    t.text     "description"
    t.integer  "year"
    t.string   "location"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.text     "legal"
    t.text     "privacy"
    t.text     "copyright"
    t.string   "webmaster_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "street"
    t.string   "city",            :limit => 40, :null => false
    t.string   "state",           :limit => 40, :null => false
    t.string   "zip",             :limit => 10
    t.string   "country"
    t.string   "primary_phone",   :limit => 40, :null => false
    t.string   "secondary_phone"
    t.string   "email",           :limit => 40, :null => false
    t.string   "im_handle"
    t.integer  "im_type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_types", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", :force => true do |t|
    t.string   "title",           :null => false
    t.text     "entry"
    t.string   "tags"
    t.integer  "content_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contents", ["content_type_id"], :name => "index_contents_on_content_type_id"
  add_index "contents", ["title"], :name => "index_contents_on_title"

  create_table "feedback_types", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", :force => true do |t|
    t.text     "feedback"
    t.integer  "feedback_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["feedback_type_id"], :name => "index_feedbacks_on_feedback_type_id"

  create_table "im_types", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions_users", ["position_id"], :name => "index_positions_users_on_position_id"
  add_index "positions_users", ["user_id"], :name => "index_positions_users_on_user_id"

  create_table "race_categories", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_categories_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "race_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_categories_users", ["race_category_id"], :name => "index_race_categories_users_on_race_category_id"
  add_index "race_categories_users", ["user_id"], :name => "index_race_categories_users_on_user_id"

  create_table "race_disciplines", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_disciplines_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "race_discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_disciplines_users", ["race_discipline_id"], :name => "index_race_disciplines_users_on_race_discipline_id"
  add_index "race_disciplines_users", ["user_id"], :name => "index_race_disciplines_users_on_user_id"

  create_table "race_results", :force => true do |t|
    t.string   "race"
    t.date     "date"
    t.integer  "placement"
    t.integer  "field_size"
    t.integer  "race_discipline_id"
    t.integer  "race_category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "race_results", ["date"], :name => "index_race_results_on_date"
  add_index "race_results", ["placement"], :name => "index_race_results_on_placement"
  add_index "race_results", ["race"], :name => "index_race_results_on_race"
  add_index "race_results", ["race_category_id"], :name => "index_race_results_on_race_category_id"
  add_index "race_results", ["race_discipline_id"], :name => "index_race_results_on_race_discipline_id"
  add_index "race_results", ["user_id"], :name => "index_race_results_on_user_id"

  create_table "races", :force => true do |t|
    t.string   "name",                 :null => false
    t.date     "date",                 :null => false
    t.time     "time"
    t.string   "place",                :null => false
    t.string   "organizer"
    t.string   "start_location"
    t.string   "finish_location"
    t.text     "description"
    t.string   "link_to_website"
    t.string   "link_to_registration"
    t.integer  "race_discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "races", ["date"], :name => "index_races_on_date"
  add_index "races", ["name"], :name => "index_races_on_name"
  add_index "races", ["place"], :name => "index_races_on_place"
  add_index "races", ["race_discipline_id"], :name => "index_races_on_race_discipline_id"

  create_table "ride_types", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rides", :force => true do |t|
    t.string   "name",                                       :null => false
    t.string   "days"
    t.string   "location"
    t.time     "time"
    t.string   "start_point"
    t.string   "end_point"
    t.text     "description"
    t.decimal  "distance",     :precision => 5, :scale => 2
    t.integer  "elevation"
    t.string   "link_to_pdf"
    t.string   "link_to_map"
    t.integer  "ride_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "sponsor_discounts", :force => true do |t|
    t.text     "discount"
    t.integer  "sponsor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sponsor_discounts", ["sponsor_id"], :name => "index_sponsor_discounts_on_sponsor_id"

  create_table "sponsor_types", :force => true do |t|
    t.string   "name",       :limit => 40, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.string   "logo_url"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "rank"
    t.boolean  "active"
    t.date     "active_since"
    t.text     "slogan"
    t.text     "description"
    t.integer  "sponsor_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sponsors", ["name"], :name => "index_sponsors_on_name"
  add_index "sponsors", ["rank"], :name => "index_sponsors_on_rank"
  add_index "sponsors", ["sponsor_type_id"], :name => "index_sponsors_on_sponsor_type_id"

  create_table "users", :force => true do |t|
    t.string   "first_name",              :limit => 40,                     :null => false
    t.string   "middle_initial"
    t.string   "last_name",               :limit => 40,                     :null => false
    t.date     "date_of_birth"
    t.string   "gender",                                :default => "Male", :null => false
    t.string   "user_image_url"
    t.string   "image_gallery_url"
    t.date     "member_since",                                              :null => false
    t.boolean  "active",                                :default => true,   :null => false
    t.boolean  "performance_team_member",               :default => false
    t.string   "usac_license",            :limit => 20
    t.text     "profile"
    t.string   "login",                                                     :null => false
    t.string   "crypted_password",                                          :null => false
    t.string   "password_salt",                                             :null => false
    t.string   "persistence_token",                                         :null => false
    t.string   "single_access_token",                                       :null => false
    t.string   "perishable_token",                                          :null => false
    t.integer  "login_count",                           :default => 0,      :null => false
    t.integer  "failed_login_count",                    :default => 0,      :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "users", ["last_name"], :name => "index_users_on_last_name"
  add_index "users", ["login"], :name => "index_users_on_login"

end
