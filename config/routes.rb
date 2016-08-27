Rails.application.routes.draw do
  root to: 'linqes#index'
  # get 'users/new', to: 'users#new' -- admin flow maybe


  get '/users/edit', to: 'users#edit'

  get '/users/:id', to: 'users#show', as: 'user'



  get '/register', to: 'registrations#new', as: 'register'

  post '/register', to: 'registrations#create'



  get '/signin', to: "sessions#new", as: 'signin'

  post '/signin', to: "sessions#create"


  post '/', to: 'sessions#destroy', as: 'signout'



  resources :comments
  resources :linqes
end



#  get '/login', to: 'sessions#new', as: 'login'
#  post '/login', to: 'sessions#create'
#  post '/logout', to: 'sessions#destroy'
#  get '/', to: 'sessions#home'
#  post '/new_ride', to: 'attractions#new_ride', as: 'new_ride'
