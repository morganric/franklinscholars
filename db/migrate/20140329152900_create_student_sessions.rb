class CreateStudentSessions < ActiveRecord::Migration
  def change
    create_table :student_sessions do |t|
      t.integer :session_id
      t.integer :student_id
      t.boolean :attended

      t.timestamps
    end
  end
end
