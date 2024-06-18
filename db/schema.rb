# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_240_617_193_345) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'owners', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_owners_on_email', unique: true
  end

  create_table 'vehicles', force: :cascade do |t|
    t.string 'vehicle_type'
    t.string 'name'
    t.integer 'length_in_inches'
    t.bigint 'owner_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['owner_id'], name: 'index_vehicles_on_owner_id'
  end

  add_foreign_key 'vehicles', 'owners'
end
