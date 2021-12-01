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

ActiveRecord::Schema.define(version: 2021_12_01_025600) do

  create_table "conducts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_list"
    t.string "birth"
    t.string "perferred_email"
    t.string "phone_number"
    t.string "home_address"
    t.string "first_name"
    t.string "last_name"
    t.string "relationship_to_you"
    t.string "email"
    t.string "phone"
    t.string "departure_airport"
    t.string "other_airport"
    t.string "can_you_depart_for_china"
    t.string "describe_any_unique_travel_arrangements"
    t.string "driver_license"
    t.string "valid_passport"
    t.string "passport_signed"
    t.string "available_during_may_and_july"
    t.string "dates_and_purpose_of_trip"
    t.string "have_you_traveled_to_china_before"
    t.string "major_family_members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "desired_program"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "marital_status"
    t.string "email"
    t.string "phone"
    t.string "birthday"
    t.string "country_where_your_passport_issued"
    t.string "do_you_have_any_child"
    t.string "do_you_have_a_passport"
    t.string "native_language"
    t.text "any_medical_conditions_requiring_special_attention"
    t.string "have_you_ever_been_convicted_of_a_crime"
    t.string "special_skills"
    t.string "special_skills_detail"
    t.string "highest_level_of_completed_education"
    t.string "college_name"
    t.string "graduation_date"
    t.text "describe_your_level_of_educational_experience"
    t.string "desired_teaching_dates"
    t.string "your_earliest_departure_date_is"
    t.string "preferred_teaching_ages"
    t.string "do_you_have_family_or_friends_you_would_like_to_be_placed_with"
    t.string "how_important_for_you_to_teach_as_another_teacher"
    t.string "any_previous_travel_to_China"
    t.string "any_past_international_travel_experience"
    t.string "how_did_you_hear_about_mandarin_bridge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
