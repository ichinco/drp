class MentorProfile < ActiveRecord::Base
  belongs_to :users
  has_many :mentor_profile_interests_pairing
  has_many :interests, through: :mentor_profile_interests_pairing
end
