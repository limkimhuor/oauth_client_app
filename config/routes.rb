Rails.application.routes.draw do
  match "/auth/:provider/callback", to: "sessions#create", via: :all
  match "/signout", to: "sessions#destroy", as: "signout", via: :all

  resources :tasks
  root to: "tasks#index"
end
