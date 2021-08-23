Rails.application.routes.draw do
  #hieraquia de route
  root "pages#home"
  get '/home', to: 'pages#home'

  resources :recipes

  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
end
