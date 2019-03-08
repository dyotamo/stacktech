Rails.application.routes.draw do
  root       'home#index'

  devise_for 'users'
  
  get        '/stacks',                 to: redirect("/")
  get        '/stacks/:slug',           to: 'stack#view',                    as: "stack"
  
  get        '/tools/:id',              to: 'tool#view',                     as: "tool"
  get        '/mystack',                to: 'my_stack#index',                as: "mystack"
  get        '/search',                 to: 'search#index',                  as: "search"
  get        '/about',                  to: 'pages#about',                   as: "about"

  get        '/mystack/languages/add',  to: 'programming_languages#new',     as: "new_language"
  post       '/mystack/languages/add',  to: 'programming_languages#create',  as: "add_language"
  
  get        '/mystack/languages/:id',  to: 'programming_languages#view',    as: "view_language"
  post        '/mystack/languages/:id', to: 'programming_languages#update',  as: "update_language"
  delete     '/mystack/languages/:id',  to: 'programming_languages#destroy', as: "delete_language"
end
