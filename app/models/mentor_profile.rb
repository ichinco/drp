class MentorProfile < ActiveRecord::Base
  belongs_to :users
  #has_many :interests, through: :mentor_profile_interests_pairing
  has_and_belongs_to_many :interests, class_name: 'Interests'
end
