Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "profile#show"
  get "/project/:id", to: "project#show"
  
  resources :projects
end
