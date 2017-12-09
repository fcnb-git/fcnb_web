class SkillInventory < ApplicationRecord
#Associations
  has_many :user_work_skills
  has_many :user_work_experience_roles, :through => user_work_skills  
end
