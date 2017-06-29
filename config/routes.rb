Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # resources :students, only: [:create, :new, :edit, :show, :update]
  devise_for :admin_users
 # ActiveAdmin.routes(self)
  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    # root to: "cities#index"
    root to: "handout#houston"

get '/c/houston/may2016.html', to: 'handout#index'

namespace :api do
  namespace :v2 do
    resources :students
  end

end

resources :cohorts do
  resources :projects
end

resources :projects do
  resources :students
end


get '/:city/:cohort/students/new', to: 'students#new', as: 'new_student'
post	'/:city/:cohort/students', to:	'students#create', as: 'create_student'


get 'demo_prints/:id', to: 'handout#demo_prints', as: 'print'

get '/c', to: 'cities#index', as: 'cities'
get '/c/:id', to: 'cities#show', as: 'city'
get '/c/:city/:id', to: 'handout#index', as: 'handout'


end
