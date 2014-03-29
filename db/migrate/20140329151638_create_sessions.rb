class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :theme
      t.string :resources
      t.integer :rating
      t.string :activities
      t.text :comment
      t.string :location
      t.integer :user_id
      t.date :date
      t.boolean :closed

      t.timestamps
    end
  end
end
