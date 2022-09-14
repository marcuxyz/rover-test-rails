Rails.application.routes.draw do
  root "home#index"

  resources :rovers, only: %i[create]
end
