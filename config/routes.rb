Rails.application.routes.draw do
  resources :orders
  resources :purchases
  resources :stocks
  resources :carts
  resources :products do
    collection do
      get :shop
    end
  end
  resources :product_types
  resources :brands
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "products#index"
  get 'shop', to: 'products#shop'
end
