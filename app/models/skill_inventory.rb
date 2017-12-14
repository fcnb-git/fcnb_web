class SkillInventory < ApplicationRecord
#Associations
  belongs_to :skill_category
  has_many :user_work_skills
  #has_many :user_work_experience_roles, :through => user_work_skills  
end
