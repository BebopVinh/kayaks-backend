Rails.application.routes.draw do
  
  resources :users
  resources :trips
  resources :comments

  post '/login', to: 'sessions#create'
  get '/get_current_user', to: 'sessions#get_current_user'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'users#create'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
