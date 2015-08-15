Rails.application.routes.draw do

  devise_for :users
  root "sites#index"
  devise_scope :user do
    get "/admin", to: "devise/sessions#new"
    get "/logout", to: "devise/sessions#destroy", as: :signout
  end

  get "/admin/panel" => "users#admin_panel"

end
