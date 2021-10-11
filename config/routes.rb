Rails.application.routes.draw do
  devise_for :users
root to: "tops#index"
# root 'comments#index'


get "books/show"
get "comments/show"
get "comments/index"
get "singins/create"
end
