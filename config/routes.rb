Rails.application.routes.draw do
  
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
    resources :workouts, only: [:index, :new]
  end
  
  resources :users

end
