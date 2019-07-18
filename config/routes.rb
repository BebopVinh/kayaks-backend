Rails.application.routes.draw do
post '/login',  to: 'sessions#create'
  # get '/get_current_user',  to: 'sessions#get_current_user'

  resources :users
  resources :trips
  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
