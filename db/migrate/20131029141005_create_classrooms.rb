class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.text :class_name
      t.integer :class_space

      t.timestamps
    end
  end
end
