class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :prof
      t.integer :user_id

      t.timestamps
    end
  end
end
