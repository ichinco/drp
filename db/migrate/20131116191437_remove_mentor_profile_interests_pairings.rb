class RemoveMentorProfileInterestsPairings < ActiveRecord::Migration
  def change
    drop_table :mentor_profile_interests_pairings
  end
end
