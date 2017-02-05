Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'search', to: 'pages#search'
  get 'shell', to: 'pages#shell'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :lounges

end
