Rails.application.routes.draw do
  
  devise_for :users
  get 'users/show'
  root to: 'books#index'
  
  resources :books do
    collection do
      get 'get_genre_children', defaults: { format: 'json' }
      get 'get_genre_grandchildren', defaults: { format: 'json' }
    end
    get :search, on: :collection
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit]
  
end