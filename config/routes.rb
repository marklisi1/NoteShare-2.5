Rails.application.routes.draw do
  resources :notesheets
  resources :courses
  root 'courses#index'
end
