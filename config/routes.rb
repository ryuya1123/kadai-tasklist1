Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :tasks
  resources :tasks, only: [:create, :destroy]
  resources :users, only: [:index, :show, :new, :create]
end
 
   