Rails.application.routes.draw do
  resources :notesheets
  resources :courses
  root 'notesheets#index'
end
