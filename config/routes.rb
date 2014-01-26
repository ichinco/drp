Drp::Application.routes.draw do

  get "users/view"
  get "mentor_profile/index"
  get "mentor_profile/new"
  post "mentor_profile/create"
  get "mentor_profile/update"
  get "mentor_profile/view"
  get "mentor_profile/delete"
  
  match '/users/', to: 'users#view', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
### mail message route
  match '/users/send_msg/:id', to: 'users#send_msg', via: 'get'

  # quasi-RESTful search url API
  match '/interests/index', to: 'interests#index', via: 'post'

  match '/mentor_profile', to: 'mentor_profile#create', via: 'post'
  match '/mentor_profile/create', to: 'mentor_profile#create', via: 'patch'
  match '/profile', to: 'mentor_profile#view', via: 'get'
  match '/profile/new', to: 'mentor_profile#new', via: 'get'
  match '/profile/update', to: 'mentor_profile#update', via: 'patch'
  match '/profile/delete', to: 'mentor_profile#destroy', via: 'delete'

  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'

  match '/signout', to: 'sessions#destroy',     via: 'delete'

  root 'project#home'
end
