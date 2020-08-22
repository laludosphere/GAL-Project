Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "profile#show"
  get "/profile/info", to: 'profile#info'
  get "/applicants/show", to: 'applicants#show'


  resources :projects
  resources :applicants
end
