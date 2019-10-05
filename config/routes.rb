Rails.application.routes.draw do
  get 'bodycolor/create'
  devise_for :users
  resources :notes
  post 'users/:user_id/notes', to: 'notes#create'
  root to: 'home#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
