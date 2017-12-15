class SkillInventory < ApplicationRecord
#Associations
  belongs_to :skill_category
  has_many :user_work_skills
  #has_many :user_work_experience_roles, :through => user_work_skills  
  
  def categorized_specific_skill
    return "#{skill_category.description} : #{specific_skill}"
  end
  
  
end
