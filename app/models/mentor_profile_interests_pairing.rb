class MentorProfileInterestsPairing < ActiveRecord::Base
    has_one :interests
    has_one :mentor_profiles, class_name:"MentorProfile"
end
