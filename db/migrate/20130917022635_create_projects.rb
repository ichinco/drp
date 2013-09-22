class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      #t.integer :student_id

      #t.integer mentor
      #t.integer reference
      #t.integer state_id

      t.timestamps
    end
  end
end
