Rails.application.routes.draw do
  root :to => 'home#index'
  # root :to => "home#index"
  devise_for :users
  resources :users
end
