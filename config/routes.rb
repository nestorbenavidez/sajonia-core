Rails.application.routes.draw do
  resources :damages
  resources :pledgees
  resources :client_groups
  resources :reception_statuses
  resources :reception_points
  resources :type_of_vehicles
  resources :certifications
  resources :varieties
  resources :qualities
  resources :lots
  resources :procedences
  resources :clients
  resources :weight_details
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  resources :users
  get 'dashboard/index'
  resources :user_sessions

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  root :to => 'user_sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
