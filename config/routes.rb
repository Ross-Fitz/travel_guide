Rails.application.routes.draw do
  jsonapi_resources :countries
  jsonapi_resources :visas
  resources :countries
  resources :documents
  devise_for :users
root 'home#index'
end
