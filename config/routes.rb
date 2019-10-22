Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'bodycolor/create'
  devise_for :users
  resources :infos
  resources :users
  resources :notes
  resources :bodycolors
  get 'calendar/index', as: 'calendar', to: 'calendar#index'
  post 'users/:user_id/notes', to: 'notes#create'
  root to: 'home#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
