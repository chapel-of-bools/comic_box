Rails.application.routes.draw do
  root to: 'publishers#index'
  resources :publishers do
    # NHO: Nice job using nested resources!
    resources :comics
  end
  # NHO: currently these routes work but there are no links to them
  resources :comics # NHO: might want to limit these resources to only :index, :show

end
