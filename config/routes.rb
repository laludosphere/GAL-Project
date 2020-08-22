Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "profile#show"
  get "/profile/info"

  resources :projects
  resources :applicants
end
