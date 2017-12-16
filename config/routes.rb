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
    
    
  
  
  # devise_for :users
  
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
