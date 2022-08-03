Rails.application.routes.draw do
  jsonapi_resources :countries
  jsonapi_resources :visas
  resources :countries
  resources :documents
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :posts do
    resources :comments, only: [:create]
  end

root 'home#index'
end
