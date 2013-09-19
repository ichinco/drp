#
# Model Representing a DRP Project that a mentor and
# mentee are working on.
#
class Project < ActiveRecord::Base
   has_one :student
   has_one :mentor
   has_many :reference
   has_one :date
   has_one :state
   
   attr_accessor :title, :summary, :description
end
