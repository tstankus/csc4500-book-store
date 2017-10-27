Rails.application.routes.draw do
  resources :invoices
  resources :employees
  resources :books
  resources :orders
  resources :customers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home_page#index'
   get 'books_controller/index'
   get 'books_controller/new'
   post 'books_controller/create'
   patch 'books_controller/update'
   get 'books_controller/show'
   get 'books_controller/edit'
   get 'books_controller/destroy'
   get 'books_controller/update'
end
