class UserWorkExperience < ApplicationRecord
    # Associations
      belongs_to :user
      has_many :user_work_experience_roles
end
