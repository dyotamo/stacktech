Rails.application.routes.draw do
  root       'home#index'

  devise_for 'users'
  
  get        '/search',       to: 'search#index',   as: "search"
  get        '/stacks/:slug', to: 'stack#view',     as: "stack"

  get        '/mystack',      to: 'my_stack#index', as: "mystack"
  put        '/mystack',      to: 'my_stack#update'
end
