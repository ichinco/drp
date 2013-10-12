class AddUsersToProject < ActiveRecord::Migration
  def change
     change_table :projects do |t|
        t.integer :student_id
        t.integer :mentor_id
        t.text :title
        t.text :summary
        t.text :description
        t.integer :project_state_id
     end
  end
end
