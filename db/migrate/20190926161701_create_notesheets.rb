class CreateNotesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :notesheets do |t|
      t.text :content
      t.integer :course_id
      t.integer :author_id
      t.string :date_created

      t.timestamps
    end
  end
end
