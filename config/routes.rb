Rails.application.routes.draw do
  #home page
  root 'linqes#index'

  #user
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  # post '/users', to: 'registrations#create'



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


