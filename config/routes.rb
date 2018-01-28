Rails.application.routes.draw do
  devise_for :models
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
end
