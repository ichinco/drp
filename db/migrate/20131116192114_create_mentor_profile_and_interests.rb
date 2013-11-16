class CreateMentorProfileAndInterests < ActiveRecord::Migration
  def change
    create_table :interests_mentor_profiles do |t|
       t.belongs_to :mentor_profile
       t.belongs_to :interests
    end
  end
end
