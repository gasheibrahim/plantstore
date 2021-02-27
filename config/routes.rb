Rails.application.routes.draw do
  resources :orders
  authenticate :user, lambda { |u| u.user_role == "admin" } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  get 'contact/index'
  get 'about/index'
  resources :line_items
  resources :carts
  resources :products
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'homepage/index'
  root "homepage#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
