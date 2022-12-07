Rails.application.routes.draw do
  resources :editors
  resources :news_item_dailies
  resources :news_items
  resources :dailies
  resources :categories
  root "pages#home"
  
  get 'pages/home'
  get 'pages/world'
  devise_for :users,
  path: '',
  path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration' }, 
  controllers: { sessions: 'users/sessions', 
                 registrations: 'users/registrations' }
  
end
