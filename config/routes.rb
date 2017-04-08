Rails.application.routes.draw do
  get '/blogs' => 'blogs#index'
  get '/blogs/new' => 'blogs#new'
  post '/blogs' => 'blogs#create'
  get 'blogs/:id' => 'blogs#show'
  get '/blogs/:id/edit' => 'blogs#edit'
  patch 'blogs/:id' => 'blogs#update'
  delete '/blogs/:id' => 'blogs#destroy'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
