Rails.application.routes.draw do
  root to: 'home#landing'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :infos
  resources :users
  resources :notes
  resources :events
  resources :bodycolors
  get 'clean', to: 'notes#clean'
  get 'recyclebin', to: 'notes#recyclebin'
  get 'bodycolor/create'
  get 'calendar', as: 'calendar', to: 'calendar#index'
  get 'notes/:id/recycle', as:'recycle_note', to: 'notes#recycle'
  get 'notes/:id/restore', as:'restore_note', to: 'notes#restore'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
