Rails.application.routes.draw do

  # Root
    root "home#index"
  
  # View Routes info rails/info/routes
    
    resources :skill_categories
    resources :skill_inventories
    resources :user_work_experience_roles
    resources :user_work_experiences
    resources :user_certifications
    resources :user_trainings
    resources :organizations
    resources :user_educations
    
    resources :user_work_skills do
      collection do
        get 'get_skill_inventories', to: "user_work_skills#get_skill_inventories"
      end
    end
    
    resources :admin do
      collection do
        get 'registered_users', to: "admin#registered_users"        
      end
    end
    
    resources :resume do
      collection do
        get 'show_job_description/:user_work_experience_id',       to: "resume#show_job_description"
        get 'show_skills_inventory/:user_work_experience_role_id', to: "resume#show_skills_inventory"
      end
    end
    
    
  
  
  # devise_for :users
  
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
