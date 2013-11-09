class CreateMentorProfileInterestsPairings < ActiveRecord::Migration
  def change
    create_table :mentor_profile_interests_pairings do |t|
      t.integer :mentor_profiles_id
      t.integer :interests_id

      t.timestamps
    end
  end
end
