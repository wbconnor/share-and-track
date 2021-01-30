Rails.application.routes.draw do
  resources :sessions
  resources :achievements
  resources :activities
  root 'application#hello'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
