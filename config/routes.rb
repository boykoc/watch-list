Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: :index
  resource :session, only: [:create, :destroy]
  get "/auth/google_oauth2/callback", to: "sessions#create"
  get "/login", to: redirect("/auth/google_oauth2")
  get "/logout", to: "sessions#destroy"  
end
