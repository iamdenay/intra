class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :student_id)
  end

  def account_update_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :student_id)
  end
end
