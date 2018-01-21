class Teacher < ApplicationRecord
  devise :database_authenticatable, :timeoutable, :rememberable,
         :registerable

  validates :email, :uniqueness => {:case_sensitive => false}
  validates :staff_id, :uniqueness => {:case_sensitive => false}
  validates :email,:first_name,:last_name,presence:true
  validates :staff_id,presence:true
  validates :dob,:profession,presence:true
end
