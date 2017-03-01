Rails.application.routes.draw do
  root 'flight#index'

  resources :flight
end
