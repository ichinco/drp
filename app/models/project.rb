#
# Model Representing a DRP Project that a mentor and
# mentee are working on.
#
class Project < ActiveRecord::Base
   has_one :student, :class_name => 'Users'
   has_one :mentor, :class_name => 'Users'
   has_one :project_state

   validates :project_state, :presence => true
   validates :student, :presence => true
   validates :mentor, :presence => true
   validates :title, :presence => true
   
   attr_accessor :title, :summary, :description
end
