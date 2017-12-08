class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
     render layout: 'home'
  end
  
  def personal_information
      render layout: 'home'
  end
  def education
      render layout: 'home'
  end  
  def work_experiences
      render layout: 'home'
  end  

  def certifications
      render layout: 'home'
  end    

  def trainings
      render layout: 'home'
  end  
  
end
