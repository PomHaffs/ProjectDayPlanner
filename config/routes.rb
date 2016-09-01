Rails.application.routes.draw do

  get "/activities/options" => "activities#options"
  get "/activities/results" => "activities#results"
  get "/activities/search" => "activities#search"
  get "/activities/:id/display" => "activities#display"

  resources :users, :except => [:edit]
  resources :activities, :cities

  get '/login' => 'sessions#new', :as => 'login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :as => 'logout'


  root :to => 'users#landing'

end
