# Added : Class ConfirmationsMailer
# Author: MDalisay
class ConfirmationsMailer < Devise::Mailer
  
  default from: '<fcnb.devteam@gmail.com>'

  def confirmation_instructions(record, token, opts={})
   @token = record.confirmation_token 
   @email = record.email
   @family_name = record.family_name
   @given_name = record.given_name
   #you can add your instance variables here
   devise_mail(record, :confirmation_instructions, opts)
  end
end