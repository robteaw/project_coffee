Rails.application.routes.draw do

  get 'order_report/index', to: "order_report#index"
  post 'order_report', to: "order_report#index"

  resources :order_items
  get 'employee_report', to: "employee_report#index"
  post 'employee_report', to: "employee_report#index"

  get 'sales_report', to: "sales_report#index"
  post 'sales_report', to: "sales_report#index"



  devise_for :users, :path_prefix => 'd', :skip => [:registrations]
  devise_scope :user do
    authenticated do
      root to: 'admin#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_root'
    end
  end

  get 'admin' => 'admin#index'

  # controller :sessions do
  #   get 'login' => :new
  #   post 'login' => :create
  #   delete 'logout' => :destroy
  # end

  resources :users
  resources :products
  resources :employees
  resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

