Rails.application.routes.draw do
  resources :motoristas
  resources :paradas
  resources :caminhaos
  resources :enderecos
  resources :rota

  get '/search/rota', to: "rota#search"
  post '/search/rota', to: "rota#search_rota"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
