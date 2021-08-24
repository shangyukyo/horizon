class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      # 5
      t.string :desired_program
      # 6
      t.string :first_name
      # 7
      t.string :last_name
      # 8
      t.string :gender
      # 11
      t.string :marital_status
      # 132
      t.string :email
      # 10
      t.string :phone
      # 13
      t.string :birthday

      # 19
      t.string :country_where_your_passport_issued
      # 12
      t.string :do_you_have_any_child
      # 18
      t.string :do_you_have_a_passport

      # 21
      t.string :native_language

      # 31
      t.text :any_medical_conditions_requiring_special_attention

      # 32
      t.string :have_you_ever_been_convicted_of_a_crime
      # 136
      t.string :special_skills

      # 135
      t.string :special_skills_detail
      # 14
      t.string :highest_level_of_completed_education

      # 15
      t.string :college_name

      # 16
      t.string :graduation_date
      # 68
      t.text :describe_your_level_of_educational_experience
      # 22
      t.string :desired_teaching_dates
      # 138
      t.string :your_earliest_departure_date_is
      # 23
      t.string :preferred_teaching_ages
      # 137
      t.string :do_you_have_family_or_friends_you_would_like_to_be_placed_with

      # 26
      t.string :how_important_for_you_to_teach_as_another_teacher
      # 29
      t.string :any_previous_travel_to_China

      # 30
      t.string :any_past_international_travel_experience

      # 70
      t.string :how_did_you_hear_about_mandarin_bridge
      t.timestamps
    end
  end
end
