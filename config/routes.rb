Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    # ^ adds new controller
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'search', to: 'pages#search'
  get 'shell', to: 'pages#shell'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'dashboard', to: 'pages#dashboard'
  resources :lounges, shallow: true do
    member do
    get "receipts", to: "lounges#receipts"
  end
  # :bevs/:orders #show, #edit, #update, #destroy already have the bev_id from the bevs controller ...
  # I only need to nest :bevs/:orders #index, #new, #create..
  # shollow nests for #index #new and #create
  # while avoiding unnecessary nesting for URLs that route to actions where the id is being passed
  # check rails routes
    resources :zones
    resources :bevs do
      resources :orders
    end
  end
end
