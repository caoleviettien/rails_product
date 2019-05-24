Rails.application.routes.draw do
  resources :orders
  resources :line_items
  #get 'store/index'
  resources :carts
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'store#index', as: 'store_index'
  resources :products do
    get :who_bought, on: :member
  end
end
