Drp::Application.routes.draw do
  get "mentor_profile/create"
  get "mentor_profile/update"
  get "mentor_profile/view"
  get "mentor_profile/delete"
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  root 'project#home'
end
