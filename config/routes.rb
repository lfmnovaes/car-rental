Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    get 'cars', to: 'cars#index'
  end
end
