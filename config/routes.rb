Rails.application.routes.draw do

  # Change the path below to change local:3000 root path
  root to: redirect('/login')
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :sales
  resources :order_products
  resources :products
  resources :employees
  resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
