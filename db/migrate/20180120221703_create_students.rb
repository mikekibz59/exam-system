class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :registration_number
      t.date :year
      t.date :dob
      t.string :email
      t.string :encrypted_password
      #to allow for remember_created_at
      t.datetime :remember_created_at


      t.timestamps null:false
    end
    add_index :students, :email,unique: true
  end
end
