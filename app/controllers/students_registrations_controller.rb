class StudentsRegistrationsController < Devise::RegistrationsController

private
  def sign_up_params
    params.require(:student).permit(:first_name,:last_name,:registration_number,
    :year,:dob,:email,:password,:password_confirmation)
  end
  def method_name
    params.require(:student).permit(:first_name,:last_name,:registration_number,:year,:dob,:current_password,:password_confirmation,
    :email)
  end

end
