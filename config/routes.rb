Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'homepage/index'
  root "homepage#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end