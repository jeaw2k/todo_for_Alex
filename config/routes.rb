Rails.application.routes.draw do
  root 'home#index'
  resources :posts
  resources :tasks
  devise_scope :user do
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
end