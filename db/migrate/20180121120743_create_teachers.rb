class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.string :staff_id
      #devise  authenticable
      t.string :email
      t.string :encrypted_password
      t.date   :dob
      #for devise rememberable
      t.datetime :remember_created_at
    end
    add_index :teachers, :email,unique: true
  end
end
