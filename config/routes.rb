Rails.application.routes.draw do
  #hieraquia de route
  root "pages#home"
  get '/home', to: 'pages#home'

  get '/recipes', to: 'recipes#index'
  get '/recipes/new', ro: 'recipes#new', as: 'new_recipe'
  get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  
end
