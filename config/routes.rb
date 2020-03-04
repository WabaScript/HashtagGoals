Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users, only: [:new, :create, :destroy, :show]
  resources :goals
  resources :follow_goals
<<<<<<< HEAD

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

=======
  
  # login routes 
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
>>>>>>> master
end
