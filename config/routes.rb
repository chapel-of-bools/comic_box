Rails.application.routes.draw do
  devise_for :users
  root to: 'publishers#index'
  resources :publishers do
    resources :comics
  end
  resources :comics
end
