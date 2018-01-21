class Student < ApplicationRecord

devise :database_authenticatable, :timeoutable, :rememberable,
       :registerable

validates :email, :uniqueness => {:case_sensitive => false}
validates :registration_number, :uniqueness => {:case_sensitive => false}
validates :first_name,:last_name,:registration_number,presence:true
validates :email, :registration_number, :dob, :year, presence:true

end
