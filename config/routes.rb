Rails.application.routes.draw do
  #home page
  root 'linqes#index'

  #user
  get '/users/edit', to: 'users#edit'
  get '/users/:id', to: 'users#show', as: 'user'
  ### get 'users/new', to: 'users#new' -- admin flow maybe

  #registration
  get '/register', to: 'registrations#new', as: 'register'
  post '/register', to: 'registrations#create'

  #sessions
  ##signin
    get '/signin', to: "sessions#new", as: 'signin'
    post '/signin', to: "sessions#create"

  ##signout
    delete '/', to: 'sessions#destroy', as: 'signout'

  resources :comments, except: :destroy

  resources :comments do
     collection do
       delete 'destroy_multiple'
     end
  end

  resources :linqes
end


