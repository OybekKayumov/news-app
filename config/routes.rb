Rails.application.routes.draw do
  resources :editors
  resources :news_item_dailies
  resources :news_items
  resources :dailies
  resources :categories
  root "pages#home"
  
  get 'pages/home'
  get 'pages/world'
  get 'pages/uzbekistan'
  get 'pages/politics'
  get 'pages/tashkent'
  get 'pages/business'
  get 'pages/opinion'
  get 'pages/science'
  get 'pages/health'
  get 'pages/sports'
  get 'pages/arts'
  get 'pages/books'
  get 'pages/style'
  get 'pages/food'
  get 'pages/travel'
  get 'pages/magazine'
  get 'pages/realestate'
  
  devise_for :users,
  path: '',
  path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration' }, 
  controllers: { sessions: 'users/sessions', 
                 registrations: 'users/registrations' }
  
end
