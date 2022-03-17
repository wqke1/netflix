Rails.application.routes.draw do

  get 'categories/index'
  get 'categories/show'
  get 'movies/index'
  get 'movies/show'


  devise_for :users
  root to: 'users#home'

  resources :users, only: [:edit, :update] do
    collection do
      get :home
      get :profile
    end
  end
end
