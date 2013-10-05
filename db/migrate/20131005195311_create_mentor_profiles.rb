class CreateMentorProfiles < ActiveRecord::Migration
  def change
    create_table :mentor_profiles do |t|
      t.string :bio

      t.timestamps
    end
  end
end
