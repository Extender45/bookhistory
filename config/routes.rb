Rails.application.routes.draw do
  devise_for :users
root to: "tops#index"
# root 'comments#index'

resources :comments

get "books/show"
get "comments/create"
get "comments/show"
get "singins/create"
end
