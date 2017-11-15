Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'

  resources :invoices
  resources :orders
  resources :customers
  resources :employees
  resources :books
  get 'pages/home'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end