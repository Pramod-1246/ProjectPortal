Rails.application.routes.draw do
  devise_for :users
  resources :projects
  get 'home/index'
  get 'users/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
