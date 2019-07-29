Rails.application.routes.draw do
  # Pages: home page
  root :to => 'pages#home'

  # Users: views
  resources :users, :only => [:new, :create, :update, :index, :destroy]
  get '/users/edit' => 'users#edit', :as => :edit_user

  # Meals: views
  resources :meals 

  # Session: users login and logout
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
