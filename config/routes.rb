Rails.application.routes.draw do
  resources :content_lists
  resources :contents
  resources :lists
  resources :users
  
  post '/signup', to: 'users#signup'
  post '/login', to: 'users#login'
  get '/me', to: 'user#me'
  
  # resources :contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


  