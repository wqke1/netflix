Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'movies/index'
  get 'movies/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
