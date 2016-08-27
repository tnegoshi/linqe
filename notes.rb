# bundle install

# model your domain

# what is a ride? (joint table between User and Attraction) - the model / method / instance is called at a specific moment where User meets Attraction

# create migrations with all data for each model

t.boolean :admin, default: false

# migrate database

# bcrypt -- gem to store passwords securely. Creates password digests.

# build your models with relationships

has_secure_password

#macro in whoever needs to use the password

# seed data

# time do do some basic routes controllers and views, can I have a home page? can I go look at it?

-- config/routes.rb ---
root to: "welcome#show"

--- welcome controller ---
 def show
 end

---- view/welcome/show.html.erb -----
fill out the welcome show page

# it's a decent idea to build the site first a bit htough before the authentication stuff

resources :attractions, only: [:index, :show]

--- attractions controller ---

 def index
  @attractions = Attraction.all
 end

 def show
  @attraction = Attraction.find(params[:id])
 end

# iterate all attractions inside the index page, and use link_to to make them links

"<%= link_to attraction.name, attraction_path(attraction) %>"

# fill out the show page by iterating through each attribute of the single attraction

# time to fill out the user page a bit

resources :users, only: [:show, :index]

--- users controller ---

 def index
  @users = User.all
 end

 def show
  @user = User.find(params[:id])
 end

# fill out the user show page much like the attraction show page
# fill out user index like the attractions index. now we will do some authentication stuff taht will restrict access to the user index page.


resources :sessions, only [:new, :create, :destroy]

OR OR OR OR OR

get '/login', to "sessions#new", as: 'login'
post '/sessions' to "sessions#create", as: 'sessions'
delete '/sessions' to "sessions#destroy", as: 'logout'


--- sessions controller ----

# make view/sessions/new.html.erb



def new
  @user = User.new
end

def create
  user = User.find_by(name: params[:user][:name])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect_to user_path(user)
  else
    redirect_to login_path
  end
end

def destroy
  reset_session
  redirect_to root_path
end


---- view/sessions/new.html.erb -----

" <%= form_for @user, url: sessions_path do |f| %>
  <%= f.text_field :name %>
  <%= f.password_field :password %>
  <%= f.submit  ""log in"" %>
  <% end %> "


  ----application controller ---
  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[user_id])
    end
  end

  def logged_in?
    !!session[:user_id]
  end

----homepage------
if logged_in?
"<%= link_to ""log in"", login_path %> "
else
"<%= link_to ""log out"", logout_path, method: ""delete"" %>"
end

---userscontroller---
#back to the userscontrollers show method

def show
  if logged_in?
    @user =User.find(params[:id])
  else
    redirect_to root_path
  end
end

### BUTTTT THIS IS NOT ABSTRACT ENOUGH SO WE ARE GONNA DO THIS LOGIC SOMEWHERE ELSE

--applicationcontroller---

helper_method :current_user, :logged_in?, :authenticate

  def authenticate
    redirect_to root_path unless logged_in?
  end

----userscontroller----
before_action :authorize, only: [:show]

# OOOOORRRRR

before_action :authorize, except: [:index]

# OOOOORRRR

# there is also skip_before_action

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

#### now the sign up
#we are not going to do it in usercontroller new but instead we are going to do a registration controller so taht someone can sign up while someone else is logged in (an admin for instance)

#the best practice : registration controller separate from users



get '/login', to "sessions#new", as: 'login'
post '/sessions' to "sessions#create", as: 'sessions'
delete '/sessions' to "sessions#destroy", as: 'logout'

get '/signup' to 'registrations#new', as: 'signup'
post '/registrations' to 'registrations#create', as: 'registrations'


----home.erb-----

if logged_in?
"<%= link_to ""log out"", logout_path, method: ""delete"" %>"
else
"<%= link_to ""log in"", login_path %> "
"<%= link_to "'sign up'", sign_up_path %>"
end

---- registrations/new.html.erb ------
'
form_for @user, url registrations_path do |f|
  f.text_field :name'
# alll the other user info stuff
 ' f.password_field :password
   f.submit "sign up
 end"'


 ---- registration controller

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_path
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :etc)
  end

















