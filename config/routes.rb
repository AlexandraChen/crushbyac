Rails.application.routes.draw do

  get "contact_form/new"

  get "contact_form/create"

  devise_for :users
  root "sites#index"
  devise_scope :user do
    get "/admin", to: "devise/sessions#new"
    get "/logout", to: "devise/sessions#destroy", as: :signout
  end

  get "/admin/panel" => "users#admin_panel"
  resources :products

  namespace :api, defaults: { format: :json } do
    resources :products, only: [:index]
  end

  resources :contact_forms, only: [:new, :create]

  get "/contact" => "sites#contact_us"
  get "/location" => "sites#location"
  get "/faq" => "sites#faq"
  get "/terms_and_conditions" => "sites#terms_and_conditions"

end
