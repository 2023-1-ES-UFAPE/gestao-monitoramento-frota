Rails.application.routes.draw do
  resources :cargas
  resources :motoristas
  resources :paradas
  resources :caminhoes
  resources :enderecos
  resources :rota

  get '/search/rota', to: "rota#search"
  post '/search/rota', to: "rota#search_rota"

  get '/search/motorista', to: "motoristas#search"
  post '/search/motorista', to: "motoristas#search_rotas"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
