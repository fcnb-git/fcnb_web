class UserWorkExperienceRole < ApplicationRecord
    # Associations
      belongs_to :user_work_experience
      has_many :user_work_skills
      has_many :skill_inventories, :through => user_work_skills  
end
