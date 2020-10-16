Rails.application.routes.draw do
  
  #resources :reviews
  #get 'workouts/:id' => 'workouts#show'
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

#omniauth
  get '/auth/facebook/callback' => 'sessions#fbcreate'

  resources :workouts
  resources :trainers do 
    resources :workouts, only: [:index, :new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
  
  resources :users

end
