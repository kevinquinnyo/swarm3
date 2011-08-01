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

ActiveRecord::Schema.define(:version => 20110410230505) do

  create_table "bids", :force => true do |t|
    t.float    "price"
    t.integer  "user_id"
    t.integer  "swarm_request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "accepted"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "swarm_requests", :force => true do |t|
    t.string   "item"
    t.float    "lat"
    t.float    "lng"
    t.integer  "user_id"
    t.string   "delivery_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.boolean  "auction_closed",        :default => false
    t.float    "suggested_price"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                                                  :default => "",  :null => false
    t.string   "encrypted_password",        :limit => 128,                               :default => "",  :null => false
    t.string   "password_salt",                                                          :default => "",  :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                                          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.boolean  "is_admin"
    t.integer  "delivery_count",                                                         :default => 0
    t.decimal  "rating_average",                           :precision => 6, :scale => 2, :default => 0.0
    t.decimal  "rating_average_reputation",                :precision => 6, :scale => 2, :default => 0.0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
