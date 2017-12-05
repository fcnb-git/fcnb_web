class RegistrationsController < Devise::RegistrationsController
  
  private
  
  def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation,:family_name,:given_name,:middle_name,:pr_date,:address,:city,:province,:country,:mobile_phone,:home_phone)
  end
  
   def account_update_params
       params.require(:user).permit(:email, :password, :password_confirmation, :current_password,:family_name,:given_name,:middle_name,:pr_date,:address,:city,:province,:country,:mobile_phone,:home_phone)
   end
end