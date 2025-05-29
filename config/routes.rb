Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  authenticated :user do
    root 'dashboard#index', as: :dashboard
    resources :my_secrets
    get 'settings', to: 'settings#index'
    patch 'settings/update_profile', to: 'settings#update_profile'
  end

  root 'home#index'
end
