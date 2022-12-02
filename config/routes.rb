Rails.application.routes.draw do
  resources :categories
  root "pages#home"
  
  resources :news
  get 'pages/home'
  get 'pages/dashboard'
  devise_for :users,
  path: '',
  path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration' }
  
end
