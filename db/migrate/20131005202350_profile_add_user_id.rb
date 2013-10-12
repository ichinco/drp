class ProfileAddUserId < ActiveRecord::Migration
  def change
    change_table :mentor_profiles do |t|
      t.integer :users_id, null: false, default: 0
    end
  end
end
