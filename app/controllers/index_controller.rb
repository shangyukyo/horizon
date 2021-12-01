class IndexController < ApplicationController
  skip_before_action :verify_authenticity_token    
  
  def register
    if request.post?
      form_data = JSON.parse(params[:formData]).deep_symbolize_keys!  
      puts form_data.inspect
      fields = form_data[:fields]
      r = Register.new
      r.desired_program = fields[:"5"][:value]
      r.first_name = fields[:"6"][:value]
      r.last_name = fields[:"7"][:value]
      r.gender = fields[:"8"][:value]
      r.marital_status = fields[:"11"][:value]
      r.email = fields[:"132"][:value]
      r.phone = fields[:"10"][:value]
      r.birthday = fields[:"13"][:value]
      r.country_where_your_passport_issued = fields[:"19"][:value]
      r.do_you_have_any_child = fields[:"12"][:value]
      r.do_you_have_a_passport = fields[:"18"][:value]
      r.native_language = fields[:"21"][:value]
      r.any_medical_conditions_requiring_special_attention = fields[:"31"][:value]
      r.have_you_ever_been_convicted_of_a_crime = fields[:"32"][:value]
      r.special_skills = fields[:"136"][:value]
      r.special_skills_detail = fields[:"135"][:value]
      r.highest_level_of_completed_education = fields[:"14"][:value]
      r.college_name = fields[:"15"][:value]
      r.graduation_date = fields[:"16"][:value]
      r.describe_your_level_of_educational_experience = fields[:"68"][:value]
      r.desired_teaching_dates = fields[:"22"][:value]
      r.your_earliest_departure_date_is = fields[:"138"][:value]
      r.preferred_teaching_ages = fields[:"23"][:value]
      r.do_you_have_family_or_friends_you_would_like_to_be_placed_with = fields[:"137"][:value]
      r.how_important_for_you_to_teach_as_another_teacher = fields[:"26"][:value]
      r.any_previous_travel_to_China = fields[:"29"][:value]
      r.any_past_international_travel_experience = fields[:"30"][:value]
      r.how_did_you_hear_about_mandarin_bridge = fields[:"70"][:value]

      r.save

      redirect_to '/client/teacher-resources/thanks_for_regist.html'
    end
  end


  def conduct
    if request.post?
      form_data = JSON.parse(params[:formData]).deep_symbolize_keys!  
      puts form_data.inspect  
      fields = form_data[:fields]
      c = Conduct.new
      c.first_name = fields[:"72"][:value]
      c.last_name = fields[:"73"][:value]
      c.email = fields[:"74"][:value]          
      c.save
      redirect_to '/client/teacher-resources/thanks_for_regist.html'
    end
  end

  def departure
    if request.post?
      form_data = JSON.parse(params[:formData]).deep_symbolize_keys!  
      puts form_data.inspect
      fields = form_data[:fields]
      r = Departure.new
      r.name_list = fields[:"100"][:value]
      r.birth = fields[:"101"][:value]
      r.perferred_email = fields[:"102"][:value]
      r.phone_number = fields[:"103"][:value]
      r.home_address = fields[:"104"][:value]
      r.first_name = fields[:"106"][:value]
      r.last_name = fields[:"107"][:value]
      r.relationship_to_you = fields[:"108"][:value]
      r.email = fields[:"109"][:value]
      r.phone = fields[:"110"][:value]
      r.departure_airport = fields[:"112"][:value]
      # r.other_airport = fields[:"11"][:value]
      r.can_you_depart_for_china = fields[:"113"][:value]
      r.describe_any_unique_travel_arrangements = fields[:"124"][:value]
      r.driver_license = fields[:"115"][:value]
      r.valid_passport = fields[:"117"][:value]
      r.passport_signed = fields[:"120"][:value]
      r.available_during_may_and_july = fields[:"127"][:value]
      r.dates_and_purpose_of_trip = fields[:"126"][:value]
      r.have_you_traveled_to_china_before = fields[:"125"][:value]
      r.major_family_members = fields[:"123"][:value]

      r.save

      redirect_to '/client/teacher-resources/thanks_for_regist.html'
    end
  end  
end
