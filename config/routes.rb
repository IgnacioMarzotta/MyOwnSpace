Rails.application.routes.draw do
  root to: 'home#landing'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :infos
  resources :users
  resources :notes
  resources :bodycolors
  get 'bodycolor/create'
  get 'calendar/index', as: 'calendar', to: 'calendar#index'
  post 'users/:user_id/notes', to: 'notes#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
