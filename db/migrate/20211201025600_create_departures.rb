class CreateDepartures < ActiveRecord::Migration[5.2]
  def change
    create_table :departures do |t|
      t.string :name_list
      t.string :birth
      t.string :perferred_email
      t.string :phone_number
      t.string :home_address
      t.string :first_name
      t.string :last_name
      t.string :relationship_to_you
      t.string :email
      t.string :phone
      t.string :departure_airport
      t.string :other_airport
      t.string :can_you_depart_for_china
      t.string :describe_any_unique_travel_arrangements
      t.string :driver_license
      t.string :valid_passport
      t.string :passport_signed
      t.string :available_during_may_and_july 
      t.string :dates_and_purpose_of_trip
      t.string :have_you_traveled_to_china_before
      t.string :major_family_members
      t.timestamps
    end
  end
end
