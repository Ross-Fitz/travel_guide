#These are the routes to access the pages, e.g., posts, documents and checklists.

Rails.application.routes.draw do
  resources :checklists
  resources :documents
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :posts do
    resources :comments, only: [:create]
  end
  jsonapi_resources :countries
  jsonapi_resources :visas


  # This is the main route to load up what the user sees when web application has been accessed.
  root 'home#index'
  get 'home/countries'
  get 'countries/canada'
end
