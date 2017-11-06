Rails.application.routes.draw do
  resources :invoices
  resources :employees
  resources :books
  resources :orders
  resources :customers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home_page#index'
  get 'home_page/index'
  get 'books/index'
  get 'books/new'
  post 'books_/create'
  patch 'books/update'
  get 'books/show'
  get 'books/edit'
  get 'books/destroy'
  get 'books/update'
end
