Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    resources :cars, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :cities, only: [:index, :show]
    resources :reservations, only: [:index, :show]
  end
end
