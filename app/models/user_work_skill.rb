class UserWorkSkill < ApplicationRecord
#Associations
belongs_to :skill_inventory
belongs_to :user_work_experience_role  
end
