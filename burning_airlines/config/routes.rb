Rails.application.routes.draw do

  root 'pages#index'

  resources :aeroplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  resources :users


end
