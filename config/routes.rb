Rails.application.routes.draw do

  resources :blogs, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/categories/new' => 'categories#new'
  post '/categories' => 'categories#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
