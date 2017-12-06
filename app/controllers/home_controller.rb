class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
     render layout: 'home'
  end
end
