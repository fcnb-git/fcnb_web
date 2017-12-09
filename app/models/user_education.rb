class UserEducation < ApplicationRecord
  
  # Associations
    belongs_to :user, autosave: true
end
