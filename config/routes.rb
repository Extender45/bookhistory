Rails.application.routes.draw do
root to: "tops#index"

get "books/show"
get "comments/show"
end
