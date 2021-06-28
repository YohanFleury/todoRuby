Rails.application.routes.draw do

  resources :todos
  resources :users

  get '/', to: 'todos#index'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
