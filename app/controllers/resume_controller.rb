class ResumeController < ApplicationController

  def index
      render layout: 'admin'
  end
  
  def show
     selected_user_id = params[:id]
     @user_profile = User.find_by_id(selected_user_id)
     @user_work_experience_position = ""
     @educaction_institution = ""
     @education_degree = ""
     @education_program = ""
     @education_specialization =""
     
     # User Work Experiences
       @user_work_experiences = UserWorkExperience.where(user_id: selected_user_id).order("date_to DESC") 
       user_work_experience = @user_work_experiences.first
       if !user_work_experience.nil?
         @user_work_experience_position = user_work_experience.position
       end
     
     # About Education
       @user_education = UserEducation.where(user_id: selected_user_id).order("date_completed DESC")
       user_education = @user_education.first
       if !user_education.nil?
         @educaction_institution = user_education.institution
         @education_degree = user_education.degree
         @education_program = user_education.program
         @education_specialization = user_education.specialization
       end
     # About Certifications and Licenses
       @user_certifications = UserCertification.where(user_id: selected_user_id).order("date_issued DESC")   

     # About Trainings
       @user_trainings = UserTraining.where(user_id: selected_user_id).order("date_completed DESC")

     # About user work skills
       @user_work_skills = Array.new      
      render layout: 'admin'
  end
  
  def show_job_description
      user_work_experience_id = params[:user_work_experience_id]
      !@user_work_experience = UserWorkExperience.find_by(id: user_work_experience_id)
      !@user_work_experience_roles = UserWorkExperienceRole.where(:user_work_experience_id => user_work_experience_id)
      render layout: 'admin'
  end
  
  def show_skills_inventory
      user_work_experience_role_id = params[:user_work_experience_role_id]
      @user_work_experience_role = UserWorkExperienceRole.find_by_id(user_work_experience_role_id)
      @user_work_experience = UserWorkExperience.find_by_id(@user_work_experience_role.user_work_experience_id)
      @skill_inventories = SkillInventory.includes(:user_work_skills,:skill_category).where(:"user_work_skills.user_work_experience_role_id" => user_work_experience_role_id)
      render layout: 'admin'
  end

end
