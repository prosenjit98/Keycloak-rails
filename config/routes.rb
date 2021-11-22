Rails.application.routes.draw do
  # devise_for :users
  Devise.setup do |config|
    # ...
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
  resources :homes

  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
