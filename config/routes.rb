Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "home#index"

  resources :bookings

  get 'about', to: "home#about"
  get 'contact', to: "home#contact"
  get 'faq', to: "home#faq"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
