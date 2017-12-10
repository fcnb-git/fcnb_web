class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
     @user_work_experience_position = ""
     @educaction_institution = ""
     @education_degree = ""
     @education_program = ""
     @education_specialization =""
     
     
     
     # User Work Experiences
       @user_work_experiences = UserWorkExperience.where(user_id: current_user.id).order("date_to DESC") 
       user_work_experience = @user_work_experiences.first
       if !user_work_experience.nil?
         @user_work_experience_position = user_work_experience.position
       end
     
     # About Education
       @user_education = UserEducation.where(user_id: current_user.id).order("date_completed DESC")
       user_education = @user_education.first
       if !user_education.nil?
         @educaction_institution = user_education.institution
         @education_degree = user_education.degree
         @education_program = user_education.program
         @education_specialization = user_education.specialization
       end
     # About Certifications and Licenses
       @user_certifications = UserCertification.where(user_id: current_user.id).order("date_issued DESC")   

     # About Trainings
       @user_trainings = UserTraining.where(user_id: current_user.id).order("date_completed DESC")

     # About user work skills
       @user_work_skills = Array.new



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
