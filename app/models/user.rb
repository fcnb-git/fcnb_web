class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable, :lockable, :timeoutable

  # Associations
  has_many :user_educations
  has_many :user_certifications
  has_many :user_trainings
  has_many :user_work_experiences
           
end
