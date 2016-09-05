Rails.application.routes.draw do

  # resources :students, only: [:create, :new, :edit, :show, :update]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
root to: "handout#redirect"

# get '/c/houston/may2016.html', to: 'handout#index'

get 'demo_prints/:id', to: 'handout#demo_prints', as: 'print'

get '/c', to: 'cities#index', as: 'cities'
get '/c/:id', to: 'cities#show', as: 'city'
get '/c/city/:id', to: 'handout#index', as: 'handout'


end
