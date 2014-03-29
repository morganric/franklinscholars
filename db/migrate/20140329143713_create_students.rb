class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :male
      t.string :image
      t.boolean :mentor
      t.integer :user_id
      t.date :dob

      t.timestamps
    end
  end
end
