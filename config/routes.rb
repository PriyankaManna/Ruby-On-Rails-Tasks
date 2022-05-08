Rails.application.routes.draw do
  resources :sectors
  resources :industries 
  resources :industries_sectors
  
  resources :appointments
  get 'welcome/index'
  resources :physicians
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
