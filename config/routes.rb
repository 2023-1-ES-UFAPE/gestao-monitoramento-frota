Rails.application.routes.draw do
  resources :paradas
  resources :rota
  resources :caminhaos
  resources :enderecos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
