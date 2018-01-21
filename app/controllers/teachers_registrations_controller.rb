class TeachersRegistrationsController < Devise::RegistrationsController


private

  def sign_up_params
    params.require(:teacher).permit(:first_name,:last_name,:profession,
    :staff_id,:email,:password,:password_confirmation,:dob)
  end

  def account_update_params
    params.require(:teacher).permit(:first_name,:last_name,:email,
    :staff_id,:password_confirmation,:current_password,:dob)
  end
end
