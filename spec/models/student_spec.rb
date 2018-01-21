require 'rails_helper'

RSpec.describe Student, type: :model do
  it{ should validate_uniqueness_of(:email).ignoring_case_sensitivity}
  it {should validate_uniqueness_of(:registration_number).ignoring_case_sensitivity}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:registration_number)}
  it {should validate_presence_of(:year)}
  it {should validate_presence_of(:dob)}

end
