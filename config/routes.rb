Rails.application.routes.draw do
  root to: 'publisher#index'
  resources :publishers
  resources :comics
end
