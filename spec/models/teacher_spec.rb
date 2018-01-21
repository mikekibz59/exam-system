require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:profession)}
  it {should validate_presence_of(:dob)}
  it {should validate_presence_of(:staff_id)}
  it {should validate_presence_of(:email)}
  it {should validate_uniqueness_of(:email).ignoring_case_sensitivity}
  it {should validate_uniqueness_of(:staff_id).ignoring_case_sensitivity}
end
