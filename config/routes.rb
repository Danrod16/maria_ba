Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  root 'products#index'
  resources :products, only: [:index, :show]
end
