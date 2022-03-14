Rails.application.routes.draw do

  get 'categories/index'
  get 'categories/show'
  get 'movies/index'
  get 'movies/show'


  devise_for :users
  root to: 'pages#home'

  resources :users do
    collection do
      get :home
    end
  end
end
