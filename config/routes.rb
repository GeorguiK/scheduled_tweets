Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/", to: "main#index", as: "root"

  get "/about", to: "about#index"

  get "/signup", to: "registrations#new"
  post "/signup", to: "registrations#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update"

  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"
  get "/password/reset/edit", to: "password_resets#edit"
  patch "/password/reset/edit", to: "password_resets#update"

  delete "/logout", to: "sessions#destroy"

end
