Rails.application.routes.draw do
  resources :avaliacaos
  resources :favoritos
  resources :categoria
  root  'publico/empresas#index'

  namespace :publico do
    resources :clientes
    resources :empresas
    resources :produtos
    resources :ambientes
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
