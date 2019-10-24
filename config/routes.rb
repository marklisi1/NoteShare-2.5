Rails.application.routes.draw do
  resources :users
  resources :notesheets
  resources :courses
  root 'notesheets#index'
end
