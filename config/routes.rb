Rails.application.routes.draw do

  devise_for :users
  root "sites#index"
  devise_scope :user do
    get "/admin", to: "devise/sessions#new"
  end

  get "/admin/panel" => "users#admin_panel"

end
