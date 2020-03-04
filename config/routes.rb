Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users
  resources :goals
  resources :follow_goals
  
  # login routes 
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  #logout routes
   delete '/logout', to: 'sessions#destroy', as: 'logout'
  
end
