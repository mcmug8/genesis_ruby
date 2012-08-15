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

ActiveRecord::Schema.define(:version => 20120815055532) do

  create_table "appraisals", :force => true do |t|
    t.date     "ordered_date"
    t.date     "received_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "customer_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "borrower"
    t.string   "address_b"
    t.string   "city_b"
    t.string   "state_b"
    t.string   "zipcode_b"
    t.string   "businessname"
    t.string   "businesstype"
    t.string   "ownership"
    t.string   "loanamount"
    t.string   "ltv"
    t.string   "transactiontype"
    t.string   "address_g"
    t.string   "city_g"
    t.string   "state_g"
    t.string   "zipcode_g"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "environmentals", :force => true do |t|
    t.integer  "customer_id"
    t.date     "ordered_date"
    t.date     "received_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "loandetails", :force => true do |t|
    t.integer  "customer_id"
    t.date     "deposit_date"
    t.date     "docs_ordered_date"
    t.date     "funded_date"
    t.string   "broker"
    t.string   "commission"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "lois", :force => true do |t|
    t.integer  "customer_id"
    t.string   "issued_date"
    t.date     "accepted_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "subborrowers", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
