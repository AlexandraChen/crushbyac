Rails.application.routes.draw do

  devise_for :users
  root "sites#index"
  devise_scope :user do
    get "/admin", to: "devise/sessions#new"
    get "/logout", to: "devise/sessions#destroy", as: :signout
  end

  namespace :api, defaults: { format: :json } do
    resources :products, only: [:index]
  end

  get "/admin/panel"          => "users#admin_panel"
  get "/contact"              => "sites#contact_us"
  get "/location"             => "sites#location"
  get "/faq"                  => "sites#faq"
  get "/terms_and_conditions" => "sites#terms_and_conditions"
 
  resources :contact_forms, only: [:new, :create]
  resources :products, except: [:destroy]
  resources :colors, except: [:destroy]
  resources :clients, only: [:new, :create, :show]

  get "/happy_customers"      => "clients#happy_customers"
  get "/custom"               => "products#custom_bikini" 

end

