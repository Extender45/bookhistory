Rails.application.routes.draw do
  devise_for :users
root to: "tops#index"
# root 'comments#index'

resources :comments
resources :books
resources :informations

get "books/show"
get "comments/show"
get "singins/create"
end
