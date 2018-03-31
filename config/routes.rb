Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'pages/events'


  resources :users do
    resources :contacts
  end
  # resources :contacts

  resources :contacts do
    get "accept", to: "contacts#accept"
    get "decline", to: "contacts#decline"
  end
end
