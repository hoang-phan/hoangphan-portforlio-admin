Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, defaults: { format: :json } do
    resources :companies, only: %i(index)
    resources :projects, only: %i(index)
    resources :pet_projects, only: %i(index)
  end
end
