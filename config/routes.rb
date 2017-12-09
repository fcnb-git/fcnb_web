Rails.application.routes.draw do
  resources :organizations
  resources :user_educations
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
