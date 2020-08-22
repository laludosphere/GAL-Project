Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "profile#show"
  get "/project/:id", to: "project#show"
  get "/profile/infos", to: "profile#infos"
  
  resources :projects
  resources :applicants
end
