Rails.application.routes.draw do

  get "/activities/results" => "activities#results"
  get "/activities/search" => "activities#search"

  resources :users, :except => [:edit]
  resources :activities, :cities

  get '/login' => 'sessions#new', :as => 'login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :as => 'logout'


  root :to => 'users#landing'

end
