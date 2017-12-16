class AdminController < ApplicationController
  def index
    render layout: 'admin'
  end
  
  def registered_users
    @users = User.all
  end
  
  
end
