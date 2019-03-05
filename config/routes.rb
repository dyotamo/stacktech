Rails.application.routes.draw do
  root "home#index"

  devise_for :users
  
  get '/search', to: 'search#index', as: "search"
  get '/stack/:slug', to: 'stack#view', as: "stack"
end
