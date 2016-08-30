Rails.application.routes.draw do

  get "/activities/results" => "activities#results"
  get "/activities/search" => "activities#search"

  resources :users, :activities, :cities


  root :to => 'users#index'

end
