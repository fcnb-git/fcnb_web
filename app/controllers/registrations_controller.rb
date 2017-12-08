# Added : Class RegistrationsController
# Author: MDalisay
class RegistrationsController < Devise::RegistrationsController
    layout "home", only: [:new, :create]
    layout "home", only: [:edit, :update]
      
  def edit

  end
  
  
  private
  
  def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation,:family_name,:given_name,:middle_name,:port_of_entry,:pr_date,:address,:city,:province,:country,:mobile_phone,:home_phone,:nationality,:gender,:birthdate,:linkedin,:facebook)
  end
  
   def account_update_params
       params.require(:user).permit(:email, :password, :password_confirmation, :current_password,:family_name,:given_name,:middle_name,:port_of_entry,:pr_date,:address,:city,:province,:country,:mobile_phone,:home_phone,:nationality,:gender,:birthdate,:linkedin,:facebook)
   end

  protected

end