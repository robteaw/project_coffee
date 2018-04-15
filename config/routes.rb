Rails.application.routes.draw do
  resources :sales
  resources :order_products
  resources :products
  resources :employees
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
