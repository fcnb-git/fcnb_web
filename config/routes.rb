Rails.application.routes.draw do
  get 'admin/index'

  # View Routes info rails/info/routes
  resources :skill_categories
  resources :skill_inventories
  resources :user_work_experience_roles
  resources :user_work_experiences
  resources :user_certifications
  resources :user_trainings
  resources :organizations
  resources :user_educations
  resources :admin
  
  resources :user_work_skills do
    collection do
      get 'get_skill_inventories', to: "user_work_skills#get_skill_inventories"
    end
  end
  
  
  # devise_for :users
  root "home#index"
  get 'home/index'
  
  get "personal_information",  to: "home#personal_information"
  get "education",             to: "home#education"
  get "work_experiences",      to: "home#work_experiences"
  get "certifications",        to: "home#certifications"
  get "trainings",             to: "home#trainings"
  
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
