Rails.application.routes.draw do
  resources :categories
  root "pages#home"
  
  resources :news
  get 'pages/home'
  devise_for :users
  
end
