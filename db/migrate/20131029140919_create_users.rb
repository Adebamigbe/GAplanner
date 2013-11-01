class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :role
      t.string :first_name
      t.string :last_name
      t.integer :dob
      t.text :email
      t.string :image
      t.string :phone

      t.timestamps
    end
  end
end
