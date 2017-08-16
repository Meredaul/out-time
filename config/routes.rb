Rails.application.routes.draw do
  root to: 'pubs#index'
  resources :pubs, only: [:index, :show]
end
