Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'search' => 'posts#search'
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
