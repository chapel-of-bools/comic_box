Rails.application.routes.draw do
  root to: 'publishers#index'
  resources :publishers do
    resources :comics
  end
  resources :comics
end
