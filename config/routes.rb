Rails.application.routes.draw do
  get 'topics/new'
  get 'session/new'
  
  root 'pages#index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  delete '/favorites', to: 'favorites#destroy'
  
  post '/comments', to: 'comments#create'
  
end

