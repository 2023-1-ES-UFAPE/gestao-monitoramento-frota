Rails.application.routes.draw do
  devise_for :users

  authenticate :user do
    resources :cargas
    resources :motoristas
    resources :paradas
    resources :caminhaos
    resources :enderecos
    resources :rota

    get '/search/rota', to: "rota#search", as: :rota_search
    post '/search/rota', to: "rota#search_rota"

    get '/search/motorista', to: "motoristas#search"
    post '/search/motorista', to: "motoristas#search_rotas"
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    root "home#index"
  end
end
