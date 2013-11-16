class Interests < ActiveRecord::Base
   attr_accessor :name
   has_and_belongs_to_many :mentor_profiles
end
