Rails.application.routes.draw do
  get 'home/profile' => 'home#profile'
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  resources :users
  resources :notesheets
  resources :courses
  root 'home#index'
end
