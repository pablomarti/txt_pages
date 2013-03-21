TxtPages::Engine.routes.draw do

  resources :pages, except: [:show, :update, :destroy]
  get ':id', to: 'pages#show', as: :page
  put ':id', to: 'pages#update', as: :page
  delete ':id', to: 'pages#destroy', as: :page

end
