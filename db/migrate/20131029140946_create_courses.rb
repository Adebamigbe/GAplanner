class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :classroom_id
      t.string :course_code
      t.string :course_name
      t.text :description
      t.float :price
      t.integer :space
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
