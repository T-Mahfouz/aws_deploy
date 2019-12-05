Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "mains#home"

  resources :bookings

  get 'aboutus', to: "mains#aboutus"
  get 'contact', to: "mains#contact"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
